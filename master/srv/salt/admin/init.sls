/opt/admin_server/admin-private.war:
  file.managed:
    - source: http://clam:clam2013@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/admin-endpoint-private/1.0.57/admin-endpoint-private-1.0.57.war
    - source_hash: md5=82b9bea4f0822a1e48f91aea40ec8f11
    - user: root
    - group: root
    - mode: 644

/opt/admin_server/admin-public.war:
  file.managed:
    - source: http://clam:clam2013@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/admin-endpoint-public/1.0.57/admin-endpoint-public-1.0.57.war
    - source_hash: md5=719ce575e14ac86338c26ea44f939edd
    - user: root
    - group: root
    - mode: 644
