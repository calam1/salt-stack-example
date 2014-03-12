mkdir /opt/apache-tomcat-7.0.52/webapps/admin-private
mkdir /opt/apache-tomcat-7.0.52/webapps/admin-public
cp /opt/admin_server/admin-private.war /opt/apache-tomcat-7.0.52/webapps/admin-private/.
cp /opt/admin_server/admin-public.war /opt/apache-tomcat-7.0.52/webapps/admin-public/.
cd /opt/apache-tomcat-7.0.52/webapps/admin-private
jar -xvf admin-private.war
cd /opt/apache-tomcat-7.0.52/webapps/admin-public
jar -xvf admin-public.war
