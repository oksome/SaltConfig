# Advanced Developer tools

OpenGL:
    pkg.installed:
        - names:
            - libgl1-mesa-dev
            - libglu1-mesa-dev
            - libgle3-dev
            - freeglut3-dev
            - libgles2-mesa-dev

# NodeJS

npm:
    pkg.installed

bower:
    npm.installed:
        - require:
            - pkg: npm

# Atom.io

libgnome-keyring-dev:
    pkg.installed
