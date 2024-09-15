{ pkgs, config, ... }:
{

  home-manager.users.rmtfpp = {
  dconf = {
    enable = true;
    settings."org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = with pkgs.gnomeExtensions; [
        blur-my-shell.extensionUuid
        gsconnect.extensionUuid
      ];
    };
    settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
  };
};
}
