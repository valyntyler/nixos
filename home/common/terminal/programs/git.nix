{
  programs.git = {
    enable = true;
    userName = "Valyn Tyler";
    userEmail = "115489989+ValynTyler@users.noreply.github.com";
    extraConfig.init.defaultBranch = "main";
    lfs.enable = true;
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
    gitCredentialHelper.hosts = ["https://github.com"];
    settings.git_protocol = "ssh";
  };
}
