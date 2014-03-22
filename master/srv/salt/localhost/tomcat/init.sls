tomcat_server:
  archive:
    - extracted
    - name: /opt/
    - source: http://download.nextag.com/apache/tomcat/tomcat-7/v7.0.52/bin/apache-tomcat-7.0.52.tar.gz
    - source_hash: md5=3d780939cc4fce1661e7411bbd640c09
    - archive_format: tar
    - tar_options: z
    - if_missing: /opt/apache-tomcat-7.0.52
