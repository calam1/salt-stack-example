orion-salt-stack
================

orion/mcp deployment via SaltStack -

The purpose of this project is to automate the deployment of the orion/mcp project. To do this manually requires a fair amount of knowledge and access to easily outdated documentation. We are trying to simplify this process by using a configuration management tool. The tool we are using is SaltStack.

====================================================================================================================
I don't want to read this (TL;DR) just get me started
-----------------------------------------------------

(yes there are plans to automate a chunk of the following steps, stay tuned!)
- download vagrant (version 1.4.3 or greater) - http://downloads.vagrantup.com/
- download virtualbox (version 4.3.6 or greater) - https://www.virtualbox.org/wiki/Downloads
- clone this repo
- cd orion-salt-stack/master/srv/pillar
	- edit AWSCredentials.sls by adding your AWS credentials
	- edit ArtifactoryCredentials.sls by adding your Artifactory credentials
- within that git repository type:  vagrant up

Basic troubleshooting:
- sometimes the network hiccups and the downloads become corrupt, it happens.  If something does not start up do the following:
	- vagrant ssh into that instance (i.e. vagrant ssh tenant) 
	- sudo su
	- less /var/log/salt/minion
	- read the logs - if you see some weirdness or gargbage printed out, 404, etc just vagrant destroy that instance (i.e. vagrant destroy tenant)
	- vagrant up that instance again
- on occassion VirtualBox does not destroy instances correctly so when you try to spin a new instance up it complains that it already exists.  Do the following:
	- there should be a directory called "VirtualBox VMs" go in there and manually delete the offending virtual machine
	- or you can open the VirtualBox console and try to destroy the offending instance there
- Bottom line is that I have not scripted this up to fail-fast, since I am a newbie to this tool and the devops world.  Please feel free to contribute to this so all our lives can be easier


====================================================================================================================
The Long version
----------------
The purpose of this project is to automate the deployment of the orion/mcp project.  To do this manually requires a fair amount of knowledge and access to easily outdated documentation.  We are trying to simplify this process by using a configuration management tool.  The tool we are using is SaltStack.

What is SaltStack?  It is a Configuration Management tool like Puppet, Chef, Ansible, etc.  Here is the site if you would like more information:  http://www.saltstack.com/

As of now, this project automates much of the deployment to your localhost(own computer).  It does require/assume that you have an AWS account with the proper DynamoDBs set up (that is if you want to use any of the swagger APIs or run any of the ATR tests), plus read access to our Artifactory server.

The deployment requires a one time set up of Vagrant and VirtualBox, the instructions are below.  These tools are required for the localhost deployment bacause we are virtualizing instances for each of our services.

We understand that we can automate some of these set up steps mentioned above plus more via a script and it is on our roadmap to do so.  

What about the cloud?  Well that will be the next step.  You will hopefully be able to use the same SaltStack to manage your Amazon AWS account.  We plan to leverage the existing scripts written by the platform team to automate the initial set up of your Amazon AWS environment plus manage the code deployments also, that is the goal at least.

Note: This deploy has only been tested on a Macbook Pro running Mavericks.

=================================================================================================================================
One Time Steps
--------------

The following 2 steps are one time only steps.  Once you have downloaded these items you will not have to do it again.  
There are versions for Windows and Mac, for both these operating systems your PATH should be set automatically when you install the software.

Download Vagrant from the following site, I am running 1.4.3; so if you are running another version YMMV

http://downloads.vagrantup.com/

If you want to read more about vagrant read here: http://www.vagrantup.com/


Download VirtualBox from the following site, I am running 4.3.6; once again if you are running another version YMMV

https://www.virtualbox.org/wiki/Downloads

VirtualBox is just virtualization software, but if you want to read more about it here you go: https://www.virtualbox.org/

=================================================================================================================================
To Start Up an Orion SaltStack
----------------------------------------------------------------------------------------------------------------------------

Clone this git repository and it will create a folder called orion-salt-stack, change into the following directory:

	orion-salt-stack/master/srv/pillar
  
Edit the following 2 files in the pillar directory:
- AWSCredentials.sls
- ArtifactoryCredentials.sls
 

Open each file in your favorite editor and place your AWS credentials and your Artifactory credentials in their respective files.(Hopefully this will 
be a little more automated in the near future)

Now enter the command:

	vagrant up
	
This will spin up 5 servers sequentially in this order:
- Salt master
- Eureka
- Tenant
- Admin
- Promote

Depending on your download speeds, your computer, etc - this process will take about 30 minutes.  Yeah that is kind of a long time,  but remember you are spinning up 5 virtual machines, downloading the OS and all its dependencies, provisioning each of them with apache, java 7, tomcat 7, and
their respective property files and artifacts and the startup time for all of the processes.

Once you run "vagrant up" the Virtual Boxes will be on your machine and unless you run the command "vagrant destroy" you will
not have to wait for the creation and provisioning of the machines again, meaning it won't take 30 minutes.

These are the IP addresses of the servers

- Salt master - 192.168.33.10
- Eureka - 192.168.33.11
- Tenant - 192.168.33.12
- Admin - 192.168.33.13
- Promote - 192.168.33.14

==================================================================================================================================
Working with the servers
------------------------

To ssh into any of the boxes you just need to use the following command:

  	vagrant ssh <instance name> i.e. master, eureka, tenant, admin, promote
  	i.e. vagrant ssh tenant
  
To destroy the instances:
  
  	vagrant destroy or vagrant destroy <instance name>
  
There are other things you can do also like suspend, provision, etc.  Please refer to the link for more options:
http://docs.vagrantup.com/v2/cli/

==================================================================================================================================
Eureka registry
---------------

Even after vagrant starts up and the command line reports that everything is completed, it still may take a few minutes 
for everything to register.  I recommend entering the following url into a browser:

http://192.168.33.11:8080/eureka/v2/apps

This url will will show what services are registered, At the top of the xml you should see the following:

	<apps__hashcode>UP_7_</apps__hashcode>

There should be 7 services registered with Eureka at this writing.  Remember this may take a few minutes, if after awhile
you do not see 7 items registered then something did not start up correctly.

These are the 7 services should register:
- eureka
- tenant
- tenant.pri
- admin
- admin.pri
- promote
- promote.pri


