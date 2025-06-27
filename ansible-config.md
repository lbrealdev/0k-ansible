# ansible-config

Generate ansible configuration file with all default settings:
```shell
ansible-config init --disabled > ansible.cfg
```

Generate ansible configuration file with all available plugins included:
```shell
ansible-config init --disabled -t all > ansible.cfg
```

Display ansible configuration file:
```shell
ansible-config view -c <ansible-cfg-file-path>
```

### Related links
- https://docs.ansible.com/ansible/latest/installation_guide/intro_configuration.html
- https://docs.ansible.com/ansible/latest/cli/ansible-config.html#ansible-config
