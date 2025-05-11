{lib, ...}: {
  options.programs.nvf = with lib; {
    enable = mkEnableOption false;
    defaultEditor = mkOption {
      type = types.bool;
      default = false;
      example = true;
      description = "Set NVF as your default editor.";
    };
  };
}
