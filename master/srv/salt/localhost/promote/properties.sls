/etc/hosts:
    file.managed:
        - source: salt://promote/files/hosts
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/promote-private/WEB-INF/classes/Application.properties:
    file.managed:
        - source: salt://promote/files/Application.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/promote-private/WEB-INF/classes/AWSCredentials.properties:
    file.managed:
        - source: salt://promote/files/AWSCredentials.properties
        - user: root
        - group: root
        - mode: 640
        - template: jinja
        - defaults:
          accessKey: {{ salt['pillar.get']('accessKey') }}
          secretKey: {{ salt['pillar.get']('secretKey') }}
          
/opt/apache-tomcat-7.0.52/webapps/promote-private/WEB-INF/classes/eureka-client.properties:
    file.managed:
        - source: salt://promote/files/promote-private/eureka-client.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/promote-public/WEB-INF/classes/Application.properties:
    file.managed:
        - source: salt://promote/files/Application.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/promote-public/WEB-INF/classes/AWSCredentials.properties:
    file.managed:
        - source: salt://promote/files/AWSCredentials.properties
        - user: root
        - group: root
        - mode: 640
        - template: jinja
        - defaults:
          accessKey: {{ salt['pillar.get']('accessKey') }}
          secretKey: {{ salt['pillar.get']('secretKey') }}

/opt/apache-tomcat-7.0.52/webapps/promote-public/WEB-INF/classes/eureka-client.properties:
    file.managed:
        - source: salt://promote/files/promote-public/eureka-client.properties
        - user: root
        - group: root
        - mode: 640
