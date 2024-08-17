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

# importing Background
background #2e3440
# importing BackgroundFaint
color16 #3b4252
# importing BackgroundIntense
color8 #434c5e
# importing Color0
color0 #4c566a
# importing Color1
color1 #bf616a
# importing Color2
color2 #ebcb8b
# importing Color3
color3 #d08770
# importing Color4
color4 #8fbcbb
# importing Color5
color5 #b48ead
# importing Color6
color6 #5e81ac
# importing Color6Faint
color22 #a3be8c
# importing Color6Intense
color14 #63d4e0
# importing Color7
color7 #d8dee9
# importing Color7Faint
color23 #e5e9f0
# importing Color7Intense
color15 #eceff4
# importing Foreground
foreground #d8dee9
# importing ForegroundIntense
color12 #eceff4


'';
  };
}
