{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/gnome.nix
    ../common/optional/programs/discord.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/hardware/bluetooth.nix
    ../common/optional/hardware/graphics.nix
    ../common/optional/hardware/nvidia.nix
    ../common/optional/hardware/openrgb.nix
    ../common/optional/hardware/openrazer.nix
    ../common/optional/hardware/xone.nix
  ];

  # Bootloader
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 12;

  # Initial NixOS version
  system.stateVersion = "24.11";
}
