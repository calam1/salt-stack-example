mkdir /opt/apache-tomcat-7.0.52/webapps/promote-private
mkdir /opt/apache-tomcat-7.0.52/webapps/promote-public
cp /opt/promote_server/promote-private.war /opt/apache-tomcat-7.0.52/webapps/promote-private/.
cp /opt/promote_server/promote-public.war /opt/apache-tomcat-7.0.52/webapps/promote-public/.
cd /opt/apache-tomcat-7.0.52/webapps/promote-private
jar -xvf promote-private.war
cd /opt/apache-tomcat-7.0.52/webapps/promote-public
jar -xvf promote-public.war
