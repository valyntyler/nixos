{pkgs, ...}: {
  programs.nushell = {
    enable = true;
    plugins = with pkgs.nushellPlugins; [formats];
    settings = {
      show_banner = false;
      completions.external = {
        enable = true;
        max_results = 200;
      };
      keybindings = [
        {
          name = "completion_menu";
          modifier = "control";
          keycode = "char_l";
          mode = "emacs";
          event = [
            {edit = "Clear";}
            {
              edit = "InsertString";
              value = "clear";
            }
            {send = "Enter";}
          ];
        }
      ];
    };
    shellAliases = {
      e = "nvim";
      l = "ls";
      o = "xdg-open .";
      la = "ls -a";
      ll = "ls -l";
      za = "zellij attach -c";
      zj = "zellij";
      ze = "zoxide edit";
      nr = "nix run";
      lsusb = "cyme -l";
    };
    extraConfig = "${pkgs.nitch}/bin/nitch";
  };
}
