# Minimum set of tools to compile libraries, Python packages

Essential:
    pkg.installed:
        - names:
            - build-essential

Python:
    pkg.installed:
        - names:
            - python-dev
            - python3-dev

# Advanced Developer tools

Pip:
    pkg.installed:
        - names:
            - python-pip
            - python3-pip

virtualenv:
    pip.installed:
        - upgrade: True
        - require:
            - pkg: python-pip

