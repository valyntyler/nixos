{
  programs.ghostty = {
    enable = true;

    # shell integrations
    enableZshIntegration = true;
    enableFishIntegration = true;

    settings = {
      # theme
      theme = "GruvboxDark";

      # font
      font-size = 14;
      font-family = "JetBrainsMono NF";

      # window
      window-padding-x = 10;
      window-padding-y = 10;

      # mouse
      mouse-hide-while-typing = true;
    };
  };
}
