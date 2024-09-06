{ config, pkgs, ... }:

{
   imports = [
      ./neovim.nix
      ./php.nix
   ];
}
