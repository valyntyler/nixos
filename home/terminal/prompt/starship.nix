{
  programs.starship.enable = true;
  programs.starship.enableTransience = true;
  programs.starship.settings = {
    format = "$all";
  
    # disable modules
    package.disabled = true;
    battery.disabled = true;

    # character
    character.success_symbol = "[❯](bold bright-green)";
    character.error_symbol = "[✗](bold bright-red)";

    # folder
    directory.truncate_to_repo = false;
    directory.truncation_length = -1;
    directory.format = "[$path]($style)[$read_only]($read_only_style) ";

    # git
    git_status.style = "bold bright-red";

    # languages
    rust = {
      format = "via [$symbol]($style)";
      symbol = "󱘗 ";
      style = "bold bright-red";
    };

    lua = {
      format = "via [$symbol]($style)";
      symbol = " ";
    };

    golang = {
      format = "via [$symbol]($style)";
      symbol = " ";
      style = "bold bright-blue";
    }; 

    bun = {
      format = "via [$symbol]($style)";
      symbol = " ";
      style = "bold bright-white";
    }; 

    nodejs = {
      format = "via [$symbol]($style)";
      symbol = "󰎙 ";
      style = "bold green";
    }; 

    nix_shell = {
      format = "via [$symbol]($style)";
      symbol = "󱄅 ";
      style = "bold bright-blue";
    }; 
  };

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
