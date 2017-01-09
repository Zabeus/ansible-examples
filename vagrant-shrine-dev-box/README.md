# SHRINE development web application server Vagrant box

## Prequisites

Vagrant 1.8.1 or greater must be installed (beyond the scope of this document)

## Steps

1. Run the `install-files.sh` script:

    * `sh install-files.sh` - this copies the necessary files (playbooks, roles, templates) from the parent directory to the Vagrant context

2. Create and edit `extra_vars.yml`

    * `cp extra_vars.sample.yml extra_vars.yml`
    * See this file for comments on the variables it should contain

3. Run `vagrant up`

## Notes

* Several tasks in the Ansible provisioning take a while to run, so the total provisioning takes around 20 minutes
