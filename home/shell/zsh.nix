{
  programs.zsh = {
    enable = true;

    # defaultKeymap = "emacs";
    syntaxHighlighting.enable = true;
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

    history.append = true;
    history.size = 5000;
    history.save = 5000;
    history.share = true;
    history.path = "$ZDOTDIR/.zsh_history";

    history.ignoreAllDups = true;
    history.ignoreDups = true;
    history.ignoreSpace = true;
    history.ignorePatterns = [ "reboot" ];

    initExtra = ''
        bindkey '^f' autosuggest-accept
        bindkey '^p' history-search-backward
        bindkey '^n' history-search-forward
      ''
      + builtins.readFile ./yazi.sh;
  };
}
