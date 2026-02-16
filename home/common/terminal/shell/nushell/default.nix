{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./aliases.nix
    ./scripts.nix
    ./settings.nix
  ];
  programs.nushell = {
    enable = true;
    plugins = with pkgs.nushellPlugins; [formats];
    extraConfig = ''${lib.getExe pkgs.nitch}'';
  };
}
