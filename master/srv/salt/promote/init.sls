/opt/promote_server/promote-private.war:
  file.managed:
    - source: http://clam:clam2013@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/promote-endpoint-private/1.0.162/promote-endpoint-private-1.0.162.war
    - source_hash: md5=d6f5776eb6092c37a2e3c4a21d11fbad
    - user: root
    - group: root
    - mode: 644

/opt/promote_server/promote-public.war:
  file.managed:
    - source: http://clam:clam2013@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/promote-endpoint-public/1.0.162/promote-endpoint-public-1.0.162.war
    - source_hash: md5=5a3e69f6ecdeb6d5fed8f6312c248c4d
    - user: root
    - group: root
    - mode: 644
