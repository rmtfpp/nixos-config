{ config, ... }:

{

  # From the initial i3 config

  home.file.".config/kitty/kitty.conf" = {

    # Overwrite the file
    force = true;
    text = ''

# Kitty config file
confirm_os_window_close 0

# Set zsh as default shell
shell zsh

# Set margin
window_padding_width 10

# Fonts
font_family      Liberation Mono
bold_font        auto
italic_font      auto
bold_italic_font auto

# Change font size
font_size 11.0

# Direct URL under the mouse
direct_urls yes

# Opacity, Be aware that using a value
# less than 1.0 is a (possibly significant)
# performance hit
background_opacity 1

# Blur, too much will lead to performance problems
background_blur 0

# Path to a background image. Must be in PNG format.
background_image none

# Set nvim as default editor
editor nvim

# kitten themes -------------------------

# Black and White theme
background #000000
foreground #ffffff

# Grayscale Colors
color0 #1a1a1a
color8 #333333

color1 #4d4d4d
color9 #666666

color2 #808080
color10 #999999

color3 #b3b3b3
color11 #cccccc

color4 #e6e6e6
color12 #ffffff

color5 #666666
color13 #999999

color6 #b3b3b3
color14 #cccccc

color7 #e6e6e6
color15 #ffffff

'';
  };
}
