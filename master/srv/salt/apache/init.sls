apache:
  pkg.installed:
    - name: {{ pillar['pkgs']['apache'] }}

port_forward:
  cmd.script:
    - source: salt://apache/scripts/port_forward.sh
    - user: root
    - group: root
    - shell: /bin/bash
