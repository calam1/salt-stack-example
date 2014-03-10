/opt/tenant_server/tenant-private.war:
  file.managed:
    - source: http://clam:clam2013@micros_retail.artifactoryonline.com/micros_retail/repo/com/micros/mcp/tenant-endpoint-private/1.0.52/tenant-endpoint-private-1.0.52.war
    - source_hash: md5=7e48df46a5dc7cc0d01acff8aeffc1f1
    - user: root
    - group: root
    - mode: 644
