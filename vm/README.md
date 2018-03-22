# Create GitLab Training VM

- Ensure that the name is `gitlab` (default).
- Create the VM and stop it immediately after.

```
vagrant up --provider=virtualbox
vagrant halt
```

- Ensure that the network settings have `vboxnet0` set for the secondary network interface (host-only).
  * `Settings > Network > Adapter 2`
- Ensure that the shared folder `/vagrant` is removed, this is not available on training notebooks.
  * `Settings > Shared Folders`
- Export via VirtualBox GUI.
- Store as `gitlab.ova` and sync to the provisioner share.
- Let Foreman handle the rest.

# Details

192.168.56.101 - gitlab.localdomain

root/password as login.

GitLab CI Runner and Docker pre-installed.
