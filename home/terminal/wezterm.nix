{
  programs.wezterm = {
    enable = true;
    # extraConfig = "${builtins.readFile ./wezterm.lua}";
    extraConfig = "${builtins.readFile ./wezterm.lua}";
  };
}
