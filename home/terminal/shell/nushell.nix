{
  lib,
  pkgs,
  ...
}: {
  programs.nushell = {
    enable = true;
    plugins = [pkgs.nushellPlugins.formats];
    settings = {
      edit_mode = "vi";
      show_banner = false;
      completions.external = {
        enable = true;
        max_results = 200;
      };
    };
    environmentVariables = {
      PROMPT_INDICATOR_VI_NORMAL = lib.hm.nushell.mkNushellInline ''$"(ansi white_dimmed)n (ansi reset)"'';
      PROMPT_INDICATOR_VI_INSERT = lib.hm.nushell.mkNushellInline ''$"(ansi white_dimmed)i (ansi reset)"'';
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
