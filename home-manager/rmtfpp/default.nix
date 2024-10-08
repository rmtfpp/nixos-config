{ config, pkgs, hardware, ... }:

{

  home.username = "rmtfpp";
  home.homeDirectory = "/home/rmtfpp";

  imports = [
    ../shared       # Shared configs
    ./dev          # dev configs
  ];

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  # xresources.properties = {
  #  "Xcursor.size" = 16;
  #  "Xft.dpi" = 172;
  #};


  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [

    # System Administration
    powertop      # see power statistics on intel-based laptops
                  # run a calibration with "powertop --calibrate"
		  # It will take 5-10 minutes
		  # then let It run for an hour and get power
		  # estimation figures
    btop          # System monitor
    ncdu          # Analyze disk usage

    # Media editing
    audacity            # audio
    obs-studio          # recording

 ];

  # Allow unfree software
  nixpkgs.config.allowUnfree = true;

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let home Manager install and manage itself.
  # programs.home-manager.enable = true;

}
