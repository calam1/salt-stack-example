rm -rf /opt/apache-tomcat-7.0.52/webapps/ROOT/*
cp /opt/tenant_server/tenant-private.war /opt/apache-tomcat-7.0.52/webapps/ROOT/ROOT.war
cd /opt/apache-tomcat-7.0.52/webapps/ROOT
jar -xvf ROOT.war
