{lib, ...}: {
  options.programs.zellij = with lib; {
    enableNushellIntegration = mkOption {
      type = types.bool;
      default = true;
      example = true;
      description = "Enable integration with Nushell";
    };
  };
}
