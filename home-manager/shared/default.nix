{ pkgs, ... }:

{
    imports = [
       ./desktop
       ./shells
    ];

    home.packages = with pkgs; [
	nerdfonts
    ];

}
