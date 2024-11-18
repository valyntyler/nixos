{
  # Bootloader.
  boot.loader = {
    systemd-boot.enable = true;
    systemd-boot.configurationLimit = 12;

    efi.canTouchEfiVariables = true;
  };
}
