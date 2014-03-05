/opt/apache-tomcat-7.0.52/conf/tomcat-users.xml:
    file.managed:
        - source: salt://tomcat/files/tomcat-users.xml
        - user: root
        - group: root
        - mode: 640
        - template: jinja
        - defaults:
            user: {{ salt['pillar.get']('tomcat-manager:user') }}
            passwd: {{ salt['pillar.get']('tomcat-manager:passwd') }}

/opt/apache-tomcat-7.0.52/bin/setenv.sh:
    file.managed:
        - source: salt://tomcat/files/setenv.sh
        - user: root
        - group: root
        - mode: 640
