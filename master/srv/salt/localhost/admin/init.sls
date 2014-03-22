{% set artifactoryUser = pillar.get('artifactoryUser') -%}
{% set artifactoryPassword = pillar.get('artifactoryPassword') -%}

/opt/admin_server/admin-private.war:
  file.managed:
    - source: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/admin-endpoint-private/1.0.0-SNAPSHOT/admin-endpoint-private-1.0.0-SNAPSHOT.war
    - source_hash: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/admin-endpoint-private/1.0.0-SNAPSHOT/admin-endpoint-private-1.0.0-SNAPSHOT.war.md5
    - user: root
    - group: root
    - mode: 644

/opt/admin_server/admin-public.war:
  file.managed:
    - source: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/admin-endpoint-public/1.0.0-SNAPSHOT/admin-endpoint-public-1.0.0-SNAPSHOT.war
    - source_hash: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/admin-endpoint-public/1.0.0-SNAPSHOT/admin-endpoint-public-1.0.0-SNAPSHOT.war.md5
    - user: root
    - group: root
    - mode: 644
