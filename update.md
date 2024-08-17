upgrading

This guide will go through how to update nixos.

first, get the current version of nixpkgs with

sudo nix-channel --list

To add a new channel, run this:

sudo nix-channel --add https://channels.nixos.org/nixos-24.05 nixos

Update flake:

nix flake update

And rebuild:

sudo nixos-rebuild switch --flake .#rmtfpp@pc --impure --upgrade
                             
https://www.youtube.com/watch?v=DKD--Egx39Q