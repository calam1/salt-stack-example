/opt/apache-tomcat-7.0.52/webapps/admin-private/WEB-INF/classes/Application.properties:
    file.managed:
        - source: salt://admin/files/Application.properties
        - user: root
        - group: root
        - mode: 640

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

/opt/apache-tomcat-7.0.52/webapps/admin-public/WEB-INF/classes/eureka-client.properties:
    file.managed:
        - source: salt://admin/files/admin-public/eureka-client.properties
        - user: root
        - group: root
        - mode: 640
