{ inputs, ... }:

{
  programs.wofi.enable = true;

  home.packages = [ inputs.runzilla.packages.x86_64-linux.wozilla ];
}
