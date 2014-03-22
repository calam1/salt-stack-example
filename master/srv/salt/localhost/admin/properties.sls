/etc/hosts:
    file.managed:
        - source: salt://admin/files/hosts
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/admin-private/WEB-INF/classes/Application.properties:
    file.managed:
        - source: salt://admin/files/Application.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/admin-private/WEB-INF/classes/AWSCredentials.properties:
    file.managed:
        - source: salt://admin/files/AWSCredentials.properties
        - user: root
        - group: root
        - mode: 640
        - template: jinja
        - defaults:
          accessKey: {{ salt['pillar.get']('accessKey') }}
          secretKey: {{ salt['pillar.get']('secretKey') }}

/opt/apache-tomcat-7.0.52/webapps/admin-private/WEB-INF/classes/eureka-client.properties:
    file.managed:
        - source: salt://admin/files/admin-private/eureka-client.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/admin-public/WEB-INF/classes/Application.properties:
    file.managed:
        - source: salt://admin/files/Application.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/admin-public/WEB-INF/classes/AWSCredentials.properties:
    file.managed:
        - source: salt://admin/files/AWSCredentials.properties
        - user: root
        - group: root
        - mode: 640
        - template: jinja
        - defaults:
          accessKey: {{ salt['pillar.get']('accessKey') }}
          secretKey: {{ salt['pillar.get']('secretKey') }}

/opt/apache-tomcat-7.0.52/webapps/admin-public/WEB-INF/classes/eureka-client.properties:
    file.managed:
        - source: salt://admin/files/admin-public/eureka-client.properties
        - user: root
        - group: root
        - mode: 640
