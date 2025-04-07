{ inputs, pkgs, lib, config, ... }:

{
  options.programs.nixvim = with lib; {
    enable = mkEnableOption true;
    defaultEditor = mkOption {
      type = types.bool;
      default = false;
      example = true;
      description = "Set NixVim as your default editor.";
    };
  };

  config = with lib; mkMerge [
    (mkIf config.programs.nixvim.enable {
      # enable nixvim
      home.packages = [ inputs.nixvim.packages.${pkgs.system}.default ];
    })
    (mkIf config.programs.nixvim.defaultEditor {
      # set as default editor
      programs.nushell.environmentVariables.EDITOR = "nvim";
      programs.nushell.environmentVariables.VISUAL = "nvim";
    })
  ];
}
