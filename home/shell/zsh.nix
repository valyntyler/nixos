{
  programs.zsh = {
    enable = true;

    syntaxHighlighting.enable = false;
    enableCompletion = true;

    autosuggestion.enable = true;
    autosuggestion.strategy = [
      "match_prev_cmd"
      "completion"
      "history"
    ];

    shellAliases = {
      cl = "clear";
      lg = "lazygit";
    };

    dotDir = ".config/zsh";

    history.size = 10000;
    history.path = "$ZDOTDIR/zsh_history";

    history.ignoreSpace = true;
    history.ignoreAllDups = true;
    history.ignorePatterns = [ "reboot" ];

    initExtra = ''
      ${builtins.readFile ./yazi.sh}     

      # rebinds
      bindkey '^I' autosuggest-accept
    '';
  };
}
