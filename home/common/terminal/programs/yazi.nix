{pkgs, ...}: {
  programs.yazi = {
    enable = true;
    enableNushellIntegration = true;

    initLua = ''require("starship"):setup()'';
    theme.flavor.dark = "gruvbox-dark";
    keymap.mgr.prepend_keymap = [
      {
        on = "k";
        run = "arrow -1";
        desc = "Move cursor up";
      }
      {
        on = "j";
        run = "arrow 1";
        desc = "Move cursor down";
      }
    ];

    flavors = with pkgs.yaziFlavors; {inherit gruvbox-dark;};
    plugins = with pkgs.yaziPlugins; {inherit starship;};

    settings.mgr = {
      scrolloff = 200;
      show_symlink = true;
    };
  };
}
