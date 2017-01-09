This is the SHRINE installer for SHRINE 1.20 and newer, packaged as an Ansible playbook. It is intended to be used with CentOS 6 or newer, as it defaults to using the yum package manager. For smoothest operation, i2b2 1.7 should also be stored on the same machine.

Requirements
------------
- Python 2.6/2.7
- Ansible 1.9
- Git
- i2b2 1.7.x (optional)

How to Install
--------------
0. Ensure that a shell user for SHRINE exists on this system! (and set it as the value for `shrine_shell_user`)
1. Check out shrine-install from open.med onto your SHRINE server:
  - `git clone https://open.med.harvard.edu/stash/scm/shrine/shrine-install.git`
2. Open host_vars/localhost in your favorite text editor, and edit all variables as necessary. 
  - The most important variables to set are the `pass` variables and `shrine_hostname`.
  - The `shrine_user` block supports multiple users, so add users here as needed.
  - Make sure to read through the entire file!
3. Fetch the Ansible Galaxy role for SHRINE using the command referenced in requirements.yml
  - `ansible-galaxy install -f -p roles -r requirements.yml`
3. Use the ansible-playbook command to run install_shrine.yml
  - `ansible-playbook install_shrine.yml`

Caveats
---------
- If your i2b2 installation is on a different server, you will have to set `is_local_i2b2` to `false`, and you will have to manually execute the database scripts on the i2b2 server, and also drop the modified `ont-ds.xml` into your jboss standalone/deployments folder. 
  - These database scripts will be placed in `/opt/shrine/i2b2-files` (substitute `/opt/shrine` with the value of `shrine_home`), which can then be transferred to the i2b2 server for import.

TODO
----
- Currently, the only database supported for the i2b2 portion of the installer is Postgres. MySQL, SQL Server, and Oracle are up next, but not officially supported by this installer.
  - For systems that are running a currently unsupported database system for their i2b2 instance, the .sql scripts placed in `/opt/shrine/i2b2-files` can be manually translated to the appropriate SQL grammar for that system and run against that database.
- The SHRINE portion of the installer assumes it will be backed by MySQL. This can be expanded to Oracle and SQL Server in the future.
  - For systems that are running a currently unsupported database system for their SHRINE instance, the .sql scripts placed in `/opt/shrine/shrine-files/` can be manually translated to the appropriate SQL grammar for that system and run against that database.
