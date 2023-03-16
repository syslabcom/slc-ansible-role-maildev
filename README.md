Role Name
=========

This role is used to install and configure [MailDev](https://github.com/maildev/maildev).
The focus of the role is to provide a simple way to test emails in a development environment.
The role is focused on installing and configuring MailDev on the following platforms:

- [flyingcircus.io](https://flyingcircus.io) NixOS VMs
- Ubuntu VMs

Requirements
------------

Having ansible installed should be just fine :).

Role Variables
--------------

The available variables are stored in `defaults/main.yml`:

```shell
$ cat defaults/main.yml
---
# defaults file for slc_ansible_role_maildev
maildev_installation_folder: "{{ ansible_env.HOME }}/maildev"
maildev_install_cronjob: true
maildev_password:
maildev_base_pathname:
```

Dependencies
------------

This module has no dependencies.

Example Playbook
----------------

```yaml
- name: Install Maildev
  hosts: localhost
  connection: local
  roles:
    - role: MailDev
  vars:
    - maildev_installation_folder: "{{ ansible_env.HOME }}/Code/buildouts/buildout.maildev"
```

Include this role with ansible-galaxy:

```shell
$ cat requirements.yml
roles:
  - name: MailDev
    src: https://github.com/syslabcom/slc-ansible-role-maildev
    version: main
```

Then run `ansible-galaxy install -r requirements.yml`.

License
-------

[BSD-3-Clause](https://opensource.org/licenses/BSD-3-Clause)

Author Information
------------------

[Syslab.com](https://syslab.com).
