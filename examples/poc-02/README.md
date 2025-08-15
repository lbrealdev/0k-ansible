# ansible poc - 02

### Use

Set up the `python venv`:
```shell
source venv.sh up
```

Undoing `python venv`:
```shell
source venv.sh down
```

Run `dynaconf` ansible playbook:
```shell
ansible-playbook playbook.yml -vvv
```

### Ansible Lint

Run ansible-lint:
```shell
ansible-lint -p playbook.yml -v
```

