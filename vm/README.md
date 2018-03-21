# Create GitLab Training VM

- Ensure that the name is `gitlab` (default).
- Create the VM and stop it immediately after.

```
vagrant up --provider=virtualbox
vagrant halt
```

- Ensure that the network settings have `vboxnet0` set for the secondary network interface (host-only).
- Export via VirtualBox GUI.
- Store as `gitlab.ova` and sync to the provisioner share.
- Let Foreman handle the rest.
