{
  imports = [
    ../common/terminal/programs
    ../common/terminal/prompt
    ../common/terminal/shell

    # modules
    ../../modules/home-manager
  ];

  home.username = "think";
  home.homeDirectory = "/home/think";

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
