
LXC:
    pkg.installed:
        - names:
            - lxc
            - debootstrap

{% for name in pillar['lxc'] %}
/tmp/foo_{{name}}:
    cmd.run:
        - name: 'touch /tmp/foo_{{name}}'
{% endfor %}
