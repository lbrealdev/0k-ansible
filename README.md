# 0k-ansible

0k ansible is my personal repository for ansible stuffs.

## Ansible - proof of concepts

- [PoC-01](https://github.com/lbrealdev/0k-ansible/tree/main/examples/poc-01)
- [PoC-02](https://github.com/lbrealdev/0k-ansible/tree/main/examples/poc-02)

## Ansible - setup project

Run this script to configure python 3.12.2 virtual environment with ansible configured:
```shell
source venv.sh up
```

For disable ansible virtual environment, run:
```shell
source venv.sh down
```

### Related links

- [Understanding privilege escalation: become](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_privilege_escalation.html)
- [Ansible – “sudo: a password is required”](https://www.shellhacks.com/ansible-sudo-a-password-is-required/)
- [Specify sudo password for Ansible](https://stackoverflow.com/questions/21870083/specify-sudo-password-for-ansible)

## Documentation

The documentation follows [Diátaxis Framework](https://diataxis.fr/).

- ## Tutorials
  - [Getting Started](docs/tutorials/getting-started.md)

- ## How-to guides
  - [Setup project](docs/how-to-guides/uv-setup.md)

- ## Reference
  - [ansible-config](docs/reference/ansible-config.md)
  - [ansible-doc](docs/reference/ansible-doc.md)
  - [ansible-galaxy](docs/reference/ansible-galaxy.md)
  - [ansible-playbook](docs/reference/ansible-playbook.md)
