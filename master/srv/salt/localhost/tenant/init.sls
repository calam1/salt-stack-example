{% set artifactoryUser = pillar.get('artifactoryUser') -%}
{% set artifactoryPassword = pillar.get('artifactoryPassword') -%}

/opt/tenant_server/tenant-private.war:
  file.managed:
    - source: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/tenant-endpoint-private/1.0.0-SNAPSHOT/tenant-endpoint-private-1.0.0-SNAPSHOT.war
    - source_hash: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/tenant-endpoint-private/1.0.0-SNAPSHOT/tenant-endpoint-private-1.0.0-SNAPSHOT.war.md5
    - user: root
    - group: root
    - mode: 644

/opt/tenant_server/tenant-public.war:
  file.managed:
    - source: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/tenant-endpoint-public/1.0.0-SNAPSHOT/tenant-endpoint-public-1.0.0-SNAPSHOT.war
    - source_hash: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/tenant-endpoint-public/1.0.0-SNAPSHOT/tenant-endpoint-public-1.0.0-SNAPSHOT.war.md5
    - user: root
    - group: root
    - mode: 644
