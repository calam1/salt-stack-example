/opt/apache-tomcat-7.0.52/webapps/ROOT/WEB-INF/classes/Application.properties:
    file.managed:
        - source: salt://tenant/files/Application.properties
        - user: root
        - group: root
        - mode: 640

/opt/apache-tomcat-7.0.52/webapps/ROOT/WEB-INF/classes/eureka-client.properties:
    file.managed:
        - source: salt://tenant/files/eureka-client.properties
        - user: root
        - group: root
        - mode: 640
