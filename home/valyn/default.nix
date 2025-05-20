{
  imports = [
    ../common/software/browser
    ../common/software/editor
    ../common/software/email
    ../common/software/creation.nix
    ../common/software/packages.nix
    ../common/software/anyrun.nix
    ../common/software/wofi.nix
    ../common/terminal/emulator
    ../common/terminal/programs
    ../common/terminal/prompt
    ../common/terminal/shell
    ../common/dconf.nix
    ../common/fonts.nix
    ../common/xdg.nix
    ../common/gtk.nix
    ../common/stylix.nix

    # modules
    ../../modules/home-manager
  ];

  home.username = "valyn";
  home.homeDirectory = "/home/valyn";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
