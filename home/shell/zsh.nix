{
  programs.zsh = {
    enable = true;

    syntaxHighlighting.enable = false;
    enableCompletion = true;

    autosuggestion.enable = true;
    autosuggestion.strategy = [
      "history"
      "completion"
    ];

    shellAliases = {
      cl = "clear";
      nvim = "nix run github:valyntyler/nixvim";
    };

    dotDir = ".config/zsh";

    history.size = 10000;
    history.path = "$ZDOTDIR/zsh_history";

    history.ignoreSpace = true;
    history.ignoreAllDups = true;
    history.ignorePatterns = [ "reboot" ];

    initExtra = ''
      # rebinds
      bindkey '^I' autosuggest-accept
    '';
  };
}
