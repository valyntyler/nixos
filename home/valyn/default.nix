{inputs, ...}: {
  imports = [
    ../common/software/browser
    ../common/software/editor
    ../common/software/email
    ../common/software/creation.nix
    ../common/software/packages.nix
    ../common/software/sherlock.nix
    ../common/software/wofi.nix
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
    inputs.sherlock.homeManagerModules.default
    ../../modules/home-manager
  ];

  home.username = "valyn";
  home.homeDirectory = "/home/valyn";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
