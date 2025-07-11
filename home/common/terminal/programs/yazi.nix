{pkgs, ...}: {
  programs.yazi = {
    enable = true;
    enableNushellIntegration = true;

    theme.flavor.dark = "gruvbox-dark";
    initLua = ''
      require("git"):setup()
      require("starship"):setup()
    '';
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
      {
        # chmod
        on = ["c" "m"];
        run = "plugin chmod";
        desc = "Chmod on selected files";
      }
      {
        # mount
        on = "M";
        run = "plugin mount";
      }
    ];

    flavors = with pkgs.yaziFlavors; {inherit gruvbox-dark;};
    plugins = with pkgs.yaziPlugins; {
      inherit
        chmod
        git
        mount
        starship
        ;
    };
    settings = {
      mgr = {
        scrolloff = 200;
        show_symlink = true;
      };
      plugin.prepend_fetchers = [
        {
          id = "git";
          name = "*";
          run = "git";
        }
        {
          id = "git";
          name = "*/";
          run = "git";
        }
      ];
    };
  };
}
