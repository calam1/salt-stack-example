{% set artifactoryUser = pillar.get('artifactoryUser') -%}
{% set artifactoryPassword = pillar.get('artifactoryPassword') -%}

/opt/promote_server/promote-private.war:
  file.managed:
    - source: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/promote-endpoint-private/1.0.0-SNAPSHOT/promote-endpoint-private-1.0.0-SNAPSHOT.war
    - source_hash: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/promote-endpoint-private/1.0.0-SNAPSHOT/promote-endpoint-private-1.0.0-SNAPSHOT.war.md5
    - user: root
    - group: root
    - mode: 644

/opt/promote_server/promote-public.war:
  file.managed:
    - source: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/promote-endpoint-public/1.0.0-SNAPSHOT/promote-endpoint-public-1.0.0-SNAPSHOT.war
    - source_hash: http://{{ artifactoryUser }}:{{ artifactoryPassword }}@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/promote-endpoint-public/1.0.0-SNAPSHOT/promote-endpoint-public-1.0.0-SNAPSHOT.war.md5
    - user: root
    - group: root
    - mode: 644
