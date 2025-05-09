{
  lib,
  config,
  ...
}: {
  options.programs.lazygit = with lib; {
    enableBashIntegration = mkOption {
      type = types.bool;
      default = true;
      example = true;
      description = "Enable integration with Bash";
    };

    enableFishIntegration = mkOption {
      type = types.bool;
      default = true;
      example = true;
      description = "Enable integration with Fish";
    };

    enableNushellIntegration = mkOption {
      type = types.bool;
      default = true;
      example = true;
      description = "Enable integration with Nushell";
    };

    enableZshIntegration = mkOption {
      type = types.bool;
      default = true;
      example = true;
      description = "Enable integration with Zsh";
    };
  };

  config = with lib;
    mkMerge [
      (mkIf config.programs.lazygit.enableBashIntegration {
        programs.bash.initExtra = ''
          lg() {
            export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

            lazygit "$@"

            if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
              cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
              rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
            fi
          }
        '';
      })
      (mkIf config.programs.lazygit.enableFishIntegration {
        programs.fish.shellInit = ''
          function lg
            set -x LAZYGIT_NEW_DIR_FILE ~/.lazygit/newdir

            lazygit $argv

            if test -f $LAZYGIT_NEW_DIR_FILE
                cd (cat $LAZYGIT_NEW_DIR_FILE)
                rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
            end
          end
        '';
      })
      (mkIf config.programs.lazygit.enableZshIntegration {
        programs.nushell.extraConfig = ''
          def --env lg [...args] {
            let lazygit_new_dir_file = $"($env.HOME)/.lazygit/newdir"
            $env.LAZYGIT_NEW_DIR_FILE = $lazygit_new_dir_file
            lazygit ...$args

            if ($lazygit_new_dir_file | path exists) {
              cd (open $lazygit_new_dir_file | str trim)
              rm -f $lazygit_new_dir_file
            }
          }
        '';
      })
      (mkIf config.programs.lazygit.enableZshIntegration {
        programs.zsh.initExtra = ''
          lg() {
            export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

            lazygit "$@"

            if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
              cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
              rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
            fi
          }
        '';
      })
    ];
}
