{
  services.gammastep = {
    enable = true;
    tray = true;

    provider = "geoclue2";
    enableVerboseLogging = true;

    settings.general.adjustment-method = "wayland";
  };
}
