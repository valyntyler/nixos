{
  programs.nushell.settings = {
    show_banner = false;
    completions.external = {
      enable = true;
      max_results = 200;
    };
    keybindings = [
      {
        name = "completion_menu";
        modifier = "control";
        keycode = "char_l";
        mode = "emacs";
        event = [
          {edit = "Clear";}
          {
            edit = "InsertString";
            value = "clear";
          }
          {send = "Enter";}
        ];
      }
    ];
  };
}
