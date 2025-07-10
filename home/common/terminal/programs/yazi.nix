{pkgs, ...}: {
  programs.yazi = {
    enable = true;
    enableNushellIntegration = true;

    initLua = ''require("starship"):setup()'';
    theme.flavor.dark = "gruvbox-dark";

    plugins.starship = pkgs.yaziPlugins.starship;
    flavors.gruvbox-dark = pkgs.yaziFlavors.gruvbox-dark;

    settings.mgr = {
      scrolloff = 200;
      show_symlink = true;
    };
  };
}
