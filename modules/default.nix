{ config, pkgs, lib, ... }:

let
  pkgs-unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in
{

  imports = [

    # Enable memory optimization
    ./memory-optimization.nix

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
    zsh-syntax-highlighting               # Git interface
    tmux              # Terminal multiplexer
    sof-firmware
    efibootmgr

    # Utilities / Misc
    ranger            # Visual file manager
    zip
    unzip
    fastfetch         # neofetch alternative
    thunderbird       # popular mail client
    tree              # list files and folder in a tree structure
    brightnessctl     # manage brightness
    unrar             # Extract .rar files
    inkscape          # Vector graphics editor
    direnv
    onlyoffice-bin
    xfce.thunar    
    zathura
    
    # Networking
    wget
    curl

    # Wayland specific
    waybar            # Simple bar, configured with json and css
    dunst             # Notification manager
    libnotify         # Dependency of dunst
    rofi-wayland      # Wailand compatible rofi
    rofi-power-menu   # Rofi but for power menu
    hyprshot
    wl-clipboard      # Save on clipboard from terminal
    kitty             # Wayland terminal
    hyprpaper         # wallpaper engine for hyprland
    wl-gammactl       # anage screen gamma and contrast
    gparted
    python3
    whatsapp-for-linux

    qemu
    dbeaver-bin
  ];

  virtualisation.libvirtd.enable = true;
  programs.virt-manager.enable = true;

  users.users.rmtfpp.extraGroups = [ "libvirtd" ];

  networking.extraHosts = ''
  192.168.122.138 test.default
  192.168.122.138 test.learning
  '';


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

