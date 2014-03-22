/etc/hosts:
    file.managed:
        - source: salt://tenant/files/hosts
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/tenant-private/WEB-INF/classes/Application.properties:
    file.managed:
        - source: salt://tenant/files/Application.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/tenant-private/WEB-INF/classes/AWSCredentials.properties:
    file.managed:
        - source: salt://tenant/files/AWSCredentials.properties
        - user: root
        - group: root
        - mode: 640
        - template: jinja
        - defaults:
          accessKey: {{ salt['pillar.get']('accessKey') }}
          secretKey: {{ salt['pillar.get']('secretKey') }}

/opt/apache-tomcat-7.0.52/webapps/tenant-private/WEB-INF/classes/eureka-client.properties:
    file.managed:
        - source: salt://tenant/files/tenant-private/eureka-client.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/tenant-public/WEB-INF/classes/Application.properties:
    file.managed:
        - source: salt://tenant/files/Application.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/tenant-public/WEB-INF/classes/AWSCredentials.properties:
    file.managed:
        - source: salt://tenant/files/AWSCredentials.properties
        - user: root
        - group: root
        - mode: 640
        - template: jinja
        - defaults:
          accessKey: {{ salt['pillar.get']('accessKey') }}
          secretKey: {{ salt['pillar.get']('secretKey') }}

/opt/apache-tomcat-7.0.52/webapps/tenant-public/WEB-INF/classes/eureka-client.properties:
    file.managed:
        - source: salt://tenant/files/tenant-public/eureka-client.properties
        - user: root
        - group: root
        - mode: 640
