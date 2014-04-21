
Intercom:
    pkg.installed:
        - names:
            - python3
            - python3-dev
            - python-virtualenv

    file.directory:
        - name: /opt/venv
        - user: okso
        - group: okso
        - dir_mode: 755
        - file_mode: 644

/opt/venv/intercom:
    virtualenv.managed:
        - path: /opt/venv/intercom
        - user: okso
        - pip: True
        - python: /usr/bin/python3
        - system_site_packages: False
        - upgrade: True

pip:
    pip.installed:
        - upgrade: True
        - bin_env: /opt/venv/intercom

intercom:
    pip.installed:
        - upgrade: True
        - bin_env: /opt/venv/intercom

# Supervisord

/opt/venv/supervisor:
    virtualenv.managed:
        - path: /opt/venv/supervisor
        - user: okso
        - pip: True
        - python: /usr/bin/python2
        - system_site_packages: False
        - upgrade: True

pip_and_supervisor:
    pip.installed:
        - names:
            - pip
            - supervisor
        - upgrade: True
        - bin_env: /opt/venv/supervisor

/opt/venv/supervisor/etc:
    file.directory:
        - user: okso
        - group: okso
        - dir_mode: 755
        - file_mode: 644

/opt/venv/supervisor/etc/supervisord.conf:
    file.managed:
        - source: salt://etc/supervisord.conf
        - mode: 644
        - user: okso
        - group: okso

supervisor:
    pip.installed:
        - upgrade: True
        - bin_env: /opt/venv/supervisor

