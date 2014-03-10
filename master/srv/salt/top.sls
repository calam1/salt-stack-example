base:
  'eureka':
    - apache
    - java
    - tomcat
    - tomcat.manager
    - tomcat.start
    - maven
    - maven.pom
  'tenant':
    - java
    - tomcat
    - tomcat.manager
    - tenant
    - tenant.copyWar
    - tenant.properties
    - tomcat.start
