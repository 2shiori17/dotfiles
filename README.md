# dotfiles

[![built with nix](https://builtwithnix.org/badge.svg)](https://builtwithnix.org)

## Setup (NixOS)

[NixOS 22.11 manual - Chapter 2. Installing NixOS](https://nixos.org/manual/nixos/stable/#sec-installation)

```shell
$ cp /etc/nixos/hardware-configuration.nix ./system/hosts/nixos/Workstation

$ sudo nixos-rebuild switch --flake ".#Workstation"
```

## References

- [divnix/digga](https://github.com/divnix/digga)
- [nix-community/home-manager](https://github.com/nix-community/home-manager)
- [NixOS Wiki](https://nixos.wiki/)
