/opt/admin_server/admin-private.war:
  file.managed:
    - source: http://clam:clam2013@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/admin-endpoint-private/1.0.60/admin-endpoint-private-1.0.60.war
    - source_hash: md5=5cda9b9283848d25647877d82c262451
    - user: root
    - group: root
    - mode: 644

/opt/admin_server/admin-public.war:
  file.managed:
    - source: http://clam:clam2013@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/admin-endpoint-public/1.0.60/admin-endpoint-public-1.0.60.war
    - source_hash: md5=09b754395abd1c6239957400bf82354f
    - user: root
    - group: root
    - mode: 644
