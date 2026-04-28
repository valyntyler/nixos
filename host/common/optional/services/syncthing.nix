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
        "frame12" = {id = "KJCYSJQ-NUDVKLV-PQ7IHR6-TMSHFXZ-DCIH5OG-B5H34E7-PCVRFGA-CKAY5AD";};
        "ideapad" = {id = "CHJ24Z2-ADITCXI-3BABDI6-22CS47T-YD5W63U-HB34QVX-KOMWWQ6-I3XVLAH";};
      };
      folders = {
        "Notes" = {
          path = "/home/${user}/Notes";
          devices = [
            "frame12"
            "ideapad"
          ];
        };
      };
    };
  };
  networking.firewall.allowedTCPPorts = [8384];
}
