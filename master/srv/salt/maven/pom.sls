/opt/maven/pom.xml:
  file.managed:
    - source: salt://maven/scripts/pom.xml
    - user: root
    - group: root
    - mode: 644

/etc/maven/settings.xml:
  file.managed:
    - source: salt://maven/files/settings.xml
    - user: root
    - group: root
    - mode: 644

cmd.start:
  cmd.script:
    - source: salt://maven/scripts/deploy.sh
    - user: root
    - group: root
    - shell: /bin/bash
