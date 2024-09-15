{ config, pkgs, lib, ... }:

let
  pkgs-unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{

  imports = [

    # Enable memory optimization
    ./memory-optimization.nix
    ./networking.nix
    # Set up users
    ./users.nix
    # Setup a custom community cache server
    # ./cache-server.nix

    # Nvidia configuration
    # ./nvidia.nix

    # Setup network manager configs for unitn-x and eduroam
    # ./network-manager.nix
  ];

  # PACKAGES ------------------------------------------------

  # List packages installed in system profile, common to all users.
  # To search, run:
  # $ nix search wget
  services.gnome.gnome-keyring = {
    enable = true;
  };


  environment.systemPackages = with pkgs; [

    # nix related
    #
    # it provides the command `nom` works just like `nix`
    # with more details log output
    nix-output-monitor
    home-manager

    # Applications
    firefox
    obsidian
    vlc               # Media player
    zed-editor
    htop
    vscode

    # Developement
    git
    zsh-autosuggestions
    zsh-syntax-highlighting              
    tmux              
    sof-firmware
    efibootmgr

    ranger
    zip
    unzip
    fastfetch         # neofetch alternative
    thunderbird       # popular mail client
    tree              # list files and folder in a tree structure
    unrar             # Extract .rar files
    inkscape          # Vector graphics editor
    direnv
    onlyoffice-bin
    zathura
    
    wget
    curl

    gparted
    python3
    whatsapp-for-linux

    qemu
    mysql-workbench
    libsecret
    gnome.seahorse
    gnome.gnome-keyring
  ];

  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  users.users.rmtfpp.extraGroups = [ "libvirtd" ];


  # Obsidian needs electron, which is considered insecure
  nixpkgs.config.permittedInsecurePackages = [
    "electron-25.9.0"
  ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;


  # Open Tablet Driver
  hardware.opentabletdriver = {
      enable = true;
      daemon.enable = true;
  };

  boot.kernelModules = [ "uinput" ];

  # Enable epmd for erlang
  services.epmd.enable = true;

}

