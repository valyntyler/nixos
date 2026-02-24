{pkgs, ...}: {
  home.packages = with pkgs; [dolphin-emu];
  programs.retroarch = {
    enable = true;
    cores.dolphin.enable = true;
  };
}
