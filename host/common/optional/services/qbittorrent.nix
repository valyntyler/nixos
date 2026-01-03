{inputs, ...}: {
  services.qbittorrent = {
    enable = true;
    openFirewall = true;
    webuiPort = 8181;
    serverConfig.Preferences.WebUI = {
      AlternativeUIEnabled = true;
      RootFolder = "${inputs.qbitwebui.packages.x86_64-linux.default}/share/qbitwebui";
    };
  };
}
