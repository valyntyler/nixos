{inputs, ...}: {
  programs.wofi.enable = true;

  home.packages = [inputs.wofizilla.packages.x86_64-linux.wofizilla];
}
