{
  programs.starship = {
    enable = true;
    enableTransience = true;
    settings = builtins.fromTOML (builtins.readFile ./starship.toml);
  };

  # enable nushell transience
  programs.nushell.extraConfig = ''
    $env.TRANSIENT_PROMPT_COMMAND = {|| starship module character }
    $env.TRANSIENT_PROMPT_COMMAND_RIGHT = {|| starship module time }
  '';
}
