{% set dir='/java/files' %}

copy-to-dir:
  file.recurse:
    - name: {{dir}}
    - source: salt://jdkfile
