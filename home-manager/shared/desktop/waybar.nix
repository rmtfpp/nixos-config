{ config, ... }:

{

  home.file.".config/waybar/config" = {
    
    # Overwrite the file
    force = true;
    text = ''
{
    "layer": "top", // Waybar at top layer
    "position": "top", // Waybar at the bottom of your screen
    "height": 24, // Waybar height
    // "width": 1920, // Waybar width
    // Choose the order of the modules
    "modules-left": ["hyprland/workspaces", "hyprland/mode"],
    "modules-center": ["hyprland/window"],
    "modules-right": ["pulseaudio", "network", "cpu", "memory", "battery", "tray", "clock"],
    "hyprland/workspaces": {
        "disable-scroll": true,
        "all-outputs": false,
        "format": "{icon}",
        "format-icons": {
            "1": "1",
            "2": "2",
            "3": "3",
            "4": "4",
            "5": "5",
            "6": "6",
            "7": "7",
            "8": "8",
            "9": "9",
            "10": "10",

            "urgent": "",
            "focused": "",
            "default": ""
        }
    },
    "hyprland/mode": {
        "format": "<span style=\"italic\">{}</span>"
    },
    "tray": {
        // "icon-size": 21,
        "spacing": 10
    },
    "clock": {
        "format-alt": "{:%Y-%m-%d}"
    },
    "cpu": {
        "format": "{usage}% "
    },
    "memory": {
        "format": "{}% "
    },
    "battery": {
        "states": {
            // "good": 95,
            "warning": 30,
            "critical": 15
        },
        "format": "{capacity}% {icon}",
        // "format-good": "", // An empty format will hide the module
        // "format-full": "",
        "format-icons": ["", "", "", "", ""]
    },
    "network": {
        // "interface": "wlp2s0", // (Optional) To force the use of this interface
        "format-wifi": "",
        "format-ethernet": "",
        "format-disconnected": "⚠",
        "on-click": "sleep 0.1 && kitty -- zsh -c \"nmtui; exec zsh\""
    },
    "pulseaudio": {
        //"scroll-step": 1,
        "format": "{volume}% {icon}",
        "format-bluetooth": "{volume}% {icon}",
        "format-muted": "",
        "format-icons": {
            "headphones": "",
            "handsfree": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", ""]
        },
        "on-click": ""
    }
}

  '';
  };



  home.file.".config/waybar/style.css" = {
    
    # Overwrite the file
    force = true;
    text = ''

* {
    border: none;
    border-radius: 0;
    font-family: "Ubuntu Nerd Font";
    font-size: 13px;
    min-height: 0;
}

window#waybar {
    background: transparent;
    color: white;
}

#window {
    font-weight: bold;
    font-family: "Ubuntu";
}
/*
#workspaces {
    padding: 0 5px;
}
*/

#workspaces button {
    padding: 0 5px;
    background: transparent;
    color: white;
}

#workspaces button.focused {
  background-color: rgba(0,0,0,0.3);
  color:#ffffff;
  border-top: 2px solid #ffffff;
}

#workspaces button.active {
  background-color: rgba(0,0,0,0.3);
  color:#ffffff;
  border-top: 2px solid #ffffff;
}

#workspaces button.urgent {
  background-color: #eb4d4b;
}

#mode {
    background: #64727D;
    border-bottom: 3px solid white;
}

#clock, #battery, #cpu, #memory, #network, #pulseaudio, #tray, #mode {
    padding: 0 5px;
    margin: 0 2px;
}

#clock {
    font-weight: bold;
}

#battery {
}

#battery icon {
    color: red;
}

#battery.charging {
}

@keyframes blink {
    to {
        background-color: #ffffff;
        color: black;
    }
}

#battery.warning:not(.charging) {
    color: white;
    animation-name: blink;
    animation-duration: 0.5s;
    animation-timing-function: linear;
    animation-iteration-count: infinite;
    animation-direction: alternate;
}

#cpu {
}

#memory {
}

#network {
}

#network.disconnected {
    background: #f53c3c;
}

#pulseaudio {
}

#pulseaudio.muted {
}

#tray {
}

#backlight {
}

  '';
  };



}
