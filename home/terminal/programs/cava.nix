let
  red = "'#fb4934'";
  green = "'#b8bb26'";
  yellow = "'#fabd2f'";
  blue = "'#83a598'";
  purple = "'#d3869b'";
  aqua = "'#8ec07c'";
in 
{
  programs.cava.enable = true;
  programs.cava.settings = {
    smoothing.noise_reduction = 15;
    output.channels = "mono";
    color = {
      gradient = 1;
      gradient_color_1 = purple;
      gradient_color_2 = blue;
      gradient_color_3 = aqua;
      gradient_color_4 = green;
      gradient_color_5 = yellow;
      gradient_color_6 = red;
    };
  };
}
