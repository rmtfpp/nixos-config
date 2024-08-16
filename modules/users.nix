{ pkgs, ... }:

{
  users.users.rmtfpp = {
    isNormalUser = true;
    description = "rmtfpp";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
       # Define packages here
    ];
  };

}
