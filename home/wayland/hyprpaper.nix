{
  services.hyprpaper.enable = true;
  services.hyprpaper.settings =
  let
    wallpaper_path = "~/Pictures/pine-watt.jpg";
  in
  {
    preload = [ wallpaper_path ];
    wallpaper = [ ",${wallpaper_path}" ];
  };
}
