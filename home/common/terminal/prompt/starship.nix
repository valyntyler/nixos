{
  programs.starship.enable = true;
  programs.starship.enableTransience = true;

  # enable nushell transience
  programs.nushell.extraConfig = ''
    $env.TRANSIENT_PROMPT_COMMAND = {|| starship module character }
    $env.TRANSIENT_PROMPT_COMMAND_RIGHT = {|| starship module time }
  '';
}
