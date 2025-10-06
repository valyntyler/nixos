{inputs, ...}: {
  imports = [
    ../common/software/browser
    ../common/software/editor
    ../common/software/launcher
    ../common/terminal/emulator
    ../common/terminal/programs
    ../common/terminal/prompt
    ../common/terminal/shell
    ../common/terminal/packages.nix
    ../common/dconf.nix
    ../common/fonts.nix
    ../common/gtk.nix
    ../common/xdg.nix

    # modules
    ../../modules/home-manager
    inputs.zen-browser.homeModules.beta
  ];

  home.username = "thumb";
  home.homeDirectory = "/home/thumb";

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
