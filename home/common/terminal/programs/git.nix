{
  programs.git = {
    enable = true;
    lfs.enable = true;
    settings = {
      init.defaultBranch = "main";
      user = {
        name = "Valyn Tyler";
        email = "git@valyntyler.com";
      };
    };
  };
}
