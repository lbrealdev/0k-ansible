# ansible-config

Generate ansible configuration file with all default settings:
```shell
ansible-config init --disabled > ansible.cfg
```

Generate ansible configuration file with all available plugins included:
```shell
ansible-config init --disabled -t all > ansible.cfg
```

