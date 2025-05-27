{
  boot = {
    binfmt.emulatedSystems = ["aarch64-linux"];
    loader = {
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        enable = true;
        configurationLimit = 12;
      };
    };
  };
}
