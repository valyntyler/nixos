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
        "ideapad" = {id = "MOYZP2T-QSTKIKY-FRBXBCL-GAQJRMT-XNBDS7J-DA3LPN3-OAMBFP2-G5HMTA5";};
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
