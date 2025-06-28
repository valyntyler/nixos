{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/services/deluge.nix
    ../common/optional/services/jellyfin.nix
  ];

  # Bootloader
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  # Initial NixOS version
  system.stateVersion = "24.11";
}
