nginx:
  pkg.installed:
    - name: nginx
  service.running:
    - enable: True
    - reload: True
