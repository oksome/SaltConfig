base:
    'roles:server':
        - match: grain
        - basics

    'roles:devserver':
        - match: grain
        - basics
        - compile

    'roles:musicserver':
        - match: grain
        - basics
        - private.musicserver

    #'id:sulfur':
    'roles:desktop':
        - match: grain
        - basics
        - local
        - desktop
        - compile
        - developer
        - crucible
        - lxc

    'roles:kde':
        - match: grain
        - kde

    'roles:intercom':
        - match: grain
        - intercom

    'roles:services':
        - match: grain
        - public.chatserver

    'roles:projects':
        - match: grain
        - documents.projects

    'id:sulfur':
        - match: grain
        - documents.railnova
