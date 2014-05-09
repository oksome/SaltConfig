# Directories

/home/okso/Documents/Projects:
    file.directory:
        - user: okso
        - group: okso
        - makedirs: True

/home/okso/Documents/Playground:
    file.directory:
        - user: okso
        - group: okso
        - makedirs: True

# Clones my main projects into my home directory

git@github.com:oksome/GLycine.git:

    git.latest:
        - target: /home/okso/Documents/Projects/Python/GLycine
        - rev: master
        - user: okso
        - submodules: True

    pkg.installed:
        - name: python-virtualenv

    virtualenv.managed:
        - name: /home/okso/Documents/Projects/Python/GLycine/venv
        - path: /home/okso/Documents/Projects/Python/GLycine/venv
        - user: okso
        - pip: True
        - python: /usr/bin/python3
        - system_site_packages: False
        - upgrade: False

    pip.installed:
        - requirements: /home/okso/Documents/Projects/Python/GLycine/requirements.txt
        - upgrade: False
        - bin_env: /home/okso/Documents/Projects/Python/GLycine/venv

git@github.com:oksome/Skink.git:
    git.latest:
        - target: /home/okso/Documents/Projects/Python/Skink
        - rev: master
        - user: okso
        - submodules: True

git@github.com:oksome/Intercom.git:
    git.latest:
        - target: /home/okso/Documents/Projects/Python/Intercom
        - rev: master
        - user: okso
        - submodules: True

git@github.com:oksome/Cockpit.git:
    git.latest:
        - target: /home/okso/Documents/Projects/Python/Cockpit
        - rev: master
        - user: okso
        - submodules: True

git@github.com:oksome/Gis.git:
    git.latest:
        - target: /home/okso/Documents/Projects/Python/Gis
        - rev: master
        - user: okso
        - submodules: True

git@github.com:oksome/Tumulus.git:
    git.latest:
        - target: /home/okso/Documents/Projects/Python/Tumulus
        - rev: master
        - user: okso
        - submodules: True

git@github.com:oksome/Druid.git:
    git.latest:
        - target: /home/okso/Documents/Projects/Python/Druid
        - rev: master
        - user: okso
        - submodules: True

git@github.com:oksome/mip.git:
    git.latest:
        - target: /home/okso/Documents/Projects/Python/mip
        - rev: master
        - user: okso
        - submodules: True

git@github.com:oksome/eZ430-Chronos.git:
    git.latest:
        - target: /home/okso/Documents/Projects/Python/eZ430-Chronos
        - rev: master
        - user: okso
        - submodules: True

