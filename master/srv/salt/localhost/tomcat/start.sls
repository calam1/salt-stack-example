cmd_start:
  cmd.script:
    - source: salt://tomcat/scripts/start.sh
    - user: root
    - group: root
    - shell: /bin/bash
