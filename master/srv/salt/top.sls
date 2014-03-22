localhost:
  'eureka':
    - apache
    - java
    - tomcat
    - tomcat.manager
    - tomcat.start
    - maven
    - maven.pom
  'tenant':
    - apache
    - java
    - tomcat
    - tomcat.manager
    - tenant
    - tenant.copyWar
    - tenant.properties
    - tomcat.start
  'admin':
    - apache
    - java
    - tomcat
    - tomcat.manager
    - admin
    - admin.copyWar
    - admin.properties
    - tomcat.start
  'promote':
    - apache
    - java
    - tomcat
    - tomcat.manager
    - promote
    - promote.copyWar
    - promote.properties
    - tomcat.start


