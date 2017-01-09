# Ansible Example Collection
This repository serves as a collection of example Ansible work produced by GitHub user theKeithD. Unless otherwise noted, all work within was typed in by this user's hand (with a little help from the Ansible documentation, the Ansible mailing lists, and Stack Overflow, of course).

Additionally, `commit-log.txt` files are included for `ansible-role-i2b2`, `ansible-role-shrine`, and `shrine-install`.

## `ansible-role-i2b2`
Ansible Galaxy role for installing i2b2, the software which SHRINE depends on to operate.

## `ansible-role-shrine`
Ansible Galaxy role for installing SHRINE, the software project I worked on during my time with Harvard Catalyst.

## `filter_plugins`
A single filter plugin intended for use with any Ansible provisioner that uses the `ansible-role-i2b2` role. Due to limitations of Ansible at the time these roles and playbooks were produced, custom filters could not be defined at the role level, only at the higher playbook level. For one example of this, see `vagrant-shrine-dev-box`.

## `shrine-install`
Ansible playbook that serves as a wrapper for `ansible-role-shrine`, intended for public consumption by end-users.

## `vagrant-shrine-dev-box`
A Vagrant context that creates a container for testing i2b2+SHRINE locally, provisioned via Ansible. Based off an example Vagrant context produced by one fellow engineer. References an example "`common`" role which provides base system image configurations, also produced by the same aforementioned fellow engineer.