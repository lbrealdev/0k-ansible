# ansible-galaxy

## Role

List installed ansible-galaxy roles:
```shell
ansible-galaxy list
```

Removes an installed role:
```shell
ansible-galaxy remove <role>
```

Create a ansible-galaxy role scaffolding:
```shell
ansible-galaxy init <role_name>
```

## Collection

List installed ansible-galaxy collections:
```shell
ansible-galaxy collection list
```

Upgrade an collection:
```shell
ansible-galaxy collection install <collection-name> --upgrade
```

### Upgrade multiple collections

First create a new environment variable called `COLLECTIONS` as described bellow:
```shell
COLLECTIONS=$(ansible-galaxy collection list --format json | jq -r 'to_entries[] | select(.key | contains("collections/ansible_collections")) | .value | keys[]')
```

Once created the environment variable, run the following command:
```shell
ansible-galaxy collection install $COLLECTIONS -U
```
