{
  programs.starship.enable = true;
  programs.starship.enableTransience = true;

  # enable nushell transience
  programs.nushell.extraConfig = ""
    + "\n" + ''$env.TRANSIENT_PROMPT_COMMAND = ^starship module character''
    + "\n" + ''$env.TRANSIENT_PROMPT_INDICATOR = ""''
    + "\n" + ''$env.TRANSIENT_PROMPT_INDICATOR_VI_INSERT = ""''
    + "\n" + ''$env.TRANSIENT_PROMPT_INDICATOR_VI_NORMAL = ""''
    + "\n" + ''$env.TRANSIENT_PROMPT_MULTILINE_INDICATOR = ""''
    + "\n" + ''$env.TRANSIENT_PROMPT_COMMAND_RIGHT = ^starship module time''
    + "\n";
}
