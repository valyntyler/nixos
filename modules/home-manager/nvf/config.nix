{
  inputs,
  lib,
  config,
  ...
}: {
  config = with lib;
    mkMerge [
      (mkIf config.programs.nvf.enable {
        # enable nvf
        home.packages = [inputs.nvf.packages.x86_64-linux.default];
      })
      (mkIf config.programs.nvf.defaultEditor {
        # set as default editor
        programs.nushell.environmentVariables.EDITOR = "nvim";
        programs.nushell.environmentVariables.VISUAL = "nvim";
      })
    ];
}
