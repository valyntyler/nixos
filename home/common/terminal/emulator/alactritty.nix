{
  programs.alacritty.enable = true;
  programs.alacritty.settings = {
    # window
    window = {
      padding.x = 10;
      padding.y = 10;
    };

    env.term = "xterm-256color";

    # mouse
    mouse.hide_when_typing = true;
  };
}
