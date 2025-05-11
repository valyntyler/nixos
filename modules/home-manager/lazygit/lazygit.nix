{lib, ...}: {
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
}
