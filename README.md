# 0k-ansible
0k ansible is my personal repository for ansible stuffs.

<!-- TOC -->

- [Ansible Galaxy](https://github.com/lbrealdev/0k-ansible/blob/main/ansible-galaxy.md)
- [Ansible Adhoc](https://github.com/lbrealdev/0k-ansible/blob/main/ansible-adhoc.md)
- [Ansible Proof of Concepts](#ansible---proof-of-concepts)
- [Ansible Config](https://github.com/lbrealdev/0k-ansible/blob/main/ansible-config.md)
- [Ansible Setup project](#ansible---setup-project)

### Ansible - proof of concepts

- [PoC-01](https://github.com/lbrealdev/0k-ansible/tree/main/poc-01)
- [PoC-02](https://github.com/lbrealdev/0k-ansible/tree/main/poc-02)

### Ansible - setup project

Run this script to configure python 3.12.2 virtual environment with ansible configured:
```shell
source venv.sh up
```

For disable ansible virtual environment, run:
```shell
source venv.sh down
```

### Commands

```shell
ansible-doc -t become -l
```

```shell
ansible-config dump --changed-only
```


- https://docs.ansible.com/ansible/latest/plugins/become.html

### Related links

- [Understanding privilege escalation: become](https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_privilege_escalation.html)
- [Ansible – “sudo: a password is required”](https://www.shellhacks.com/ansible-sudo-a-password-is-required/)
- [Specify sudo password for Ansible](https://stackoverflow.com/questions/21870083/specify-sudo-password-for-ansible)
