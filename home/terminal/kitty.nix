{
  programs.kitty = {
    enable = true;

    # font
    font = {
      size = 12;
      name = "JetBrainsMono NF";
    };

    # theme
    themeFile = "gruvbox-dark"; 

    settings = {
      allow_remote_control = "yes";
      dynamic_background_opacity = "yes";
    };
  };
}
