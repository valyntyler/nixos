{
  programs.git = {
    enable = true;
    lfs.enable = true;
    settings = {
      init.defaultBranch = "main";
      push.autoSetupRemote = true;
      user = {
        name = "Valyn Tyler";
        email = "git@valyntyler.com";
      };
    };
  };
}
