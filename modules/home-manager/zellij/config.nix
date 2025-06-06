{
  lib,
  config,
  ...
}: {
  config = with lib;
    mkMerge [
      (mkIf config.programs.zellij.enableNushellIntegration {
        programs.nushell = {
          environmentVariables = {
            ZELLIJ_AUTO_ATTACH = config.programs.zellij.attachExistingSession;
            ZELLIJ_AUTO_EXIT = config.programs.zellij.exitShellOnExit;
          };
          extraConfig = ''
            if "ZELLIJ" not-in $env {
              if "ZELLIJ_AUTO_ATTACH" in $env and $env.ZELLIJ_AUTO_ATTACH {
                zellij attach -c
              } else {
                zellij
              }

              if "ZELLIJ_AUTO_EXIT" in $env and $env.ZELLIJ_AUTO_EXIT {
                exit
              }
            }
          '';
        };
      })
    ];
}
