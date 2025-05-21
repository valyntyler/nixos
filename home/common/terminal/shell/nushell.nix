{pkgs, ...}: {
  programs.nushell = {
    enable = true;
    plugins = [pkgs.nushellPlugins.formats];
    settings = {
      show_banner = false;
      completions.external = {
        enable = true;
        max_results = 200;
      };
    };
    shellAliases = {
      e = "nvim";
      l = "ls";
      o = "xdg-open";
      la = "ls -a";
      ll = "ls -l";
      ze = "zoxide edit";
      nr = "nix run";
    };
    extraConfig = "${pkgs.nitch}/bin/nitch";
  };
}
