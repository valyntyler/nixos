{user, ...}: {
  services.syncthing = {
    enable = true;
    openDefaultPorts = true;
    # guiAddress = "0.0.0.0:8384";
    settings = {
      # gui.user = "myuser";
      # devices = {
      #   "device1" = {id = "DEVICE-ID-GOES-HERE";};
      #   "device2" = {id = "DEVICE-ID-GOES-HERE";};
      # };
      folders = {
        "Notes" = {
          path = "/home/${user}/Notes";
          devices = [
            # "device1"
            # "device2"
          ];
        };
      };
    };
  };
  networking.firewall.allowedTCPPorts = [8384];
}
