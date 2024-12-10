{
  programs.kitty = {
    enable = true;

    # font
    font = {
      size = 12;
      name = "DejaVu Sans";
    };

    # theme
    themeFile = "gruvbox-dark"; 

    settings = {
      allow_remote_control = "yes";
      dynamic_background_opacity = "yes";
    };
  };
}
