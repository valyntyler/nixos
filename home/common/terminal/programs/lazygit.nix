{
  programs.lazygit = {
    enable = true;
    settings = {
      notARepository = "quit";
      gui = {
        # scrolloff
        scrollPastBottom = true;
        scrollOffMargin = 999;
        scrollOffBehaviour = "margin";

        # spinner (find more at https://www.npmjs.com/package/cli-spinners)
        spinner.rate = 60;
        spinner.frames = ["" "" "" "" "" ""];
      };
    };
  };
}
