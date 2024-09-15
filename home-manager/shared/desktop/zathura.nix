{ config, ... }:

{

  home.file.".config/zathura/zathurarc" = {

    # Overwrite the file
    force = true;

    # Use rofi-theme-selector for themes
    text = ''

    set selection-clipboard clipboard

  '';
  };
}