maven:
  archive:
    - extracted
    - name: /opt/
    - source: ftp://mirror.reverse.net/pub/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
    - source_hash: md5=94c51f0dd139b4b8549204d0605a5859
    - archive_format: tar
    - tar_options: z
    - if_missing: /opt/maven-3.0.5
