{
  pkgs,
  lib,
  config,
  ...
}: {
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
      ex = "xdg-open";
      la = "ls -a";
      ll = "ls -l";
      za = "zellij attach -c";
      zj = "zellij";
      ze = "zoxide edit";
      nr = "nix run";
      rcon = "rcon-cli";
      tree = "eza --tree";
      lsusb = "cyme -l";
      license = "license-generator";
      speedtest = "speedtest-go";
    };
    extraConfig = let
      root = ./scripts;
    in
      lib.concatStringsSep "\n" [
        ''${lib.getExe pkgs.nitch}''
        (lib.pipe root [
          builtins.readDir
          (lib.filterAttrs (_: type: type == "regular"))
          (lib.filterAttrs (name: _: builtins.match ".*\\.nu" name != null))
          (lib.mapAttrsToList (name: _: "source ${root}/${name}"))
          (builtins.concatStringsSep "\n")
        ])
      ];
  };

  home.file = let
    root = ./scripts;
    cfg = config.programs.nushell;
  in
    lib.pipe root [
      builtins.readDir
      (lib.filterAttrs (_: type: type == "regular"))
      (lib.filterAttrs (name: _: builtins.match ".*\\.nu" name != null))
      (builtins.mapAttrs (name: _: builtins.readFile (root + "/${name}")))
      (builtins.mapAttrs (_: text: {inherit text;}))
      (lib.mapAttrsToList (name: value: {"${cfg.configDir}/scripts/${name}" = value;}))
      lib.mkMerge
    ];
}
