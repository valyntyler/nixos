{
  programs.lazygit.enable = true;
  programs.lazygit.settings = {
    gui = {
      # scrolloff
      scrollPastBottom = true;
      scrollOffMargin = 999;
      scrollOffBehaviour = "margin";
    
      # spinner
      spinner.rate = 60;
      spinner.frames = [ # (find more at https://www.npmjs.com/package/cli-spinners)

        "▐|\\____________▌"
			  "▐_|\\___________▌"
			  "▐__|\\__________▌"
			  "▐___|\\_________▌"
			  "▐____|\\________▌"
			  "▐_____|\\_______▌"
			  "▐______|\\______▌"
			  "▐_______|\\_____▌"
			  "▐________|\\____▌"
			  "▐_________|\\___▌"
			  "▐__________|\\__▌"
			  "▐___________|\\_▌"
			  "▐____________|\\▌"
			  "▐____________/|▌"
			  "▐___________/|_▌"
			  "▐__________/|__▌"
			  "▐_________/|___▌"
			  "▐________/|____▌"
			  "▐_______/|_____▌"
			  "▐______/|______▌"
			  "▐_____/|_______▌"
			  "▐____/|________▌"
			  "▐___/|_________▌"
			  "▐__/|__________▌"
			  "▐_/|___________▌"
			  "▐/|____________▌"

        # "←"
        # "↖"
        # "↑"
        # "↗"
        # "→"
        # "↘"
        # "↓"
        # "↙"
      ];
    };
  };

  programs.zsh.initExtra = ''
    lg() {
      export LAZYGIT_NEW_DIR_FILE=~/.lazygit/newdir

      lazygit "$@"

      if [ -f $LAZYGIT_NEW_DIR_FILE ]; then
        cd "$(cat $LAZYGIT_NEW_DIR_FILE)"
        rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
      fi
    }
  '';

  programs.fish.shellInit = ''
    function lg
      set -x LAZYGIT_NEW_DIR_FILE ~/.lazygit/newdir

      lazygit $argv

      if test -f $LAZYGIT_NEW_DIR_FILE
          cd (cat $LAZYGIT_NEW_DIR_FILE)
          rm -f $LAZYGIT_NEW_DIR_FILE > /dev/null
      end
    end
  '';
}
