{inputs, ...}: {
  imports = [
    ../common/software/browser
    ../common/software/editor
    ../common/software/email
    ../common/software/launcher
    ../common/software/creation.nix
    ../common/software/packages.nix
    ../common/software/spotifyd.nix
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

  home.username = "valyn";
  home.homeDirectory = "/home/valyn";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
