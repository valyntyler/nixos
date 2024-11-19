{
  programs.tmux = {
    enable = true;
    clock24 = true;

    prefix = "M-a";
    escapeTime = 0;

    customPaneNavigationAndResize = true;
    keyMode = "vi";

    mouse = true;
    extraConfig = "${builtins.readFile ./tmux.conf}";
  };
}
