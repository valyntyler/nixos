## NixOS ISO

To build a custom bootable NixOS USB stick, run the following

```sh
sudo nix build ".#nixosConfigurations.stick.config.system.build.isoImage"
```
