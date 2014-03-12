mkdir /opt/apache-tomcat-7.0.52/webapps/tenant-private
mkdir /opt/apache-tomcat-7.0.52/webapps/tenant-public
cp /opt/tenant_server/tenant-private.war /opt/apache-tomcat-7.0.52/webapps/tenant-private/.
cp /opt/tenant_server/tenant-public.war /opt/apache-tomcat-7.0.52/webapps/tenant-public/.
cd /opt/apache-tomcat-7.0.52/webapps/tenant-private
jar -xvf tenant-private.war
cd /opt/apache-tomcat-7.0.52/webapps/tenant-public
jar -xvf tenant-public.war
