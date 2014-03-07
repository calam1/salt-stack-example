{% set dir='/opt/rpm' %}

copy-to-dir:
  file.recurse:
    - name: {{dir}}
    - source: salt://tenant/files

