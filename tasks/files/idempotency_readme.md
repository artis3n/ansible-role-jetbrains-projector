# artis3n-projector/

This directory is used for idempotency checks in the [artis3n.jetbrains_projector](https://github.com/artis3n/ansible-role-jetbrains-projector) Ansible role.
Each file holds the SHA256 hash of each IDE configuration so the role knows to update a configuration if the state changes.

Please do not modify files in this repository manually unless you want to purge this role from your system.
If you are trying to uninstall, I recommend running the role with `state: absent`.
