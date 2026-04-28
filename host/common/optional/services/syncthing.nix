{user, ...}: {
  services.syncthing = {
    inherit user;
    enable = true;
    openDefaultPorts = true;
    dataDir = "/home/${user}";
    configDir = "/home/${user}/.config/syncthing";
    # guiAddress = "0.0.0.0:8384";
    settings = {
      devices = {
        "desktop" = {id = "BMC3PDQ-W66JLMW-FEG6HBC-Q4JFIH2-X7M7WO3-GHVLBN2-RU2B3PS-VC4I5QG";};
        "frame12" = {id = "KMXK3ED-VLR5HBI-APXL74C-TEUZ45Y-OTHCDBU-DJ6IV4M-F4ZAE36-EZ5FKQL";};
        "ideapad" = {id = "CHJ24Z2-ADITCXI-3BABDI6-22CS47T-YD5W63U-HB34QVX-KOMWWQ6-I3XVLAH";};
      };
      folders = {
        "Notes" = {
          path = "/home/${user}/Notes";
          devices = [
            "desktop"
            "frame12"
            "ideapad"
          ];
        };
      };
    };
  };
  networking.firewall.allowedTCPPorts = [8384];
}
