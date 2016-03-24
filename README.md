# FishLogin

![screenshot](http://i.imgur.com/wNB32eY.png)

Login Manager written in Fish.

# Requeriments:

  - Fish shell (fishshell.com)
  - Gnometerminal, Guake, Tilda, or other terminal.
  - Screenfetch

# How to use?

 - Set fish as your default shell;
 - move the files to ~/.config/fish/functions;
 - Modify your fish_greeting function (~/.config/fish/functions/fish_greeting):
    - function fish_greeting
      - login
    - end
 - Modify your keyboard shortcuts, .desktop files, etc:
    - add "~/.config/fish/functions/execIfLoged.fish " before the real command;

 - Modify the file login.fish:
    - Set the variables term_width and term_height to your terminal's width and height, in CHARACTERS (not pixel);
    - Set the variables logo_width and logo_height to your screenfecth's OS logo, in CHARACTERS (not pixel);
    - If it is still not centered:
      - Add or remove spaces in line "set $spaces2 $spaces'___________'"; 
      
  Feel free to ask any question or help;
  You can also fork this repository and make your own version;
  If you wish to make a .sh version of these scripts, please share with me later :)
  (I tried, but it was buggy)

# How about the clock?
I'm using conky. Check the repo: https://github.com/eduardoHoefel/Conky
