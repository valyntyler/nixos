{
  programs.lazygit.enable = true;
  programs.lazygit.settings = {
    gui = {
      # scrolloff
      scrollPastBottom = true;
      scrollOffMargin = 999;
      scrollOffBehaviour = "margin";
    
      # spinner
      spinner.rate = 50;
      spinner.frames = [ # (find more at https://www.npmjs.com/package/cli-spinners)
        "←"
        "↖"
        "↑"
        "↗"
        "→"
        "↘"
        "↓"
        "↙"
      ];
    };
  };
}
