{
  programs.ghostty = {
    enable = true;

    enableZshIntegration = true;
    enableFishIntegration = true;
  };

  xdg.configFile."ghostty/config".text = ''
    # theme
    theme = Gruvbox Dark
    title = " "

    # font
    font-family = JetBrainsMono NF
    font-size = 14

    # window
    window-padding-x = 10
    window-padding-y = 10

    # hide mouse
    mouse-hide-while-typing = true

    # disable default binds
    keybind = clear

    # keybinds
    keybind = ctrl+shift+r=reload_config
    keybind = performable:ctrl+shift+c=copy_to_clipboard
    keybind = performable:ctrl+shift+v=paste_from_clipboard
    keybind = performable:ctrl+shift+a=select_all
    keybind = performable:ctrl+l=clear_screen

    # keybind = alt+n=new_split:auto
    # keybind = alt+shift+h=new_split:down
    # keybind = alt+shift+v=new_split:right
    # keybind = alt+q=close_surface

    # keybind = alt+h=goto_split:left
    # keybind = alt+j=goto_split:down
    # keybind = alt+k=goto_split:up
    # keybind = alt+l=goto_split:right

    # keybind = ctrl+shift+t=new_tab
    # keybind = ctrl+shift+w=close_tab

    # keybind = alt+1=goto_tab:1
    # keybind = alt+2=goto_tab:2
    # keybind = alt+3=goto_tab:3
    # keybind = alt+4=goto_tab:4
    # keybind = alt+5=goto_tab:5
    # keybind = alt+6=goto_tab:6
    # keybind = alt+7=goto_tab:7
    # keybind = alt+8=goto_tab:8
    # keybind = alt+9=goto_tab:9
    # keybind = alt+0=goto_tab:10
  '';
}
