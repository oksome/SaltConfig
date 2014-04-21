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
