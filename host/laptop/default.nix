{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/gnome.nix
    ../common/optional/programs/discord.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/services/kanata.nix
    ../common/optional/hardware/bluetooth.nix
    ../common/optional/hardware/graphics.nix
    ../common/optional/hardware/nvidia.nix
  ];

  # Add a user
  users.users.valyn = {
    isNormalUser = true;
    description = "Valyn";
    extraGroups = ["networkmanager" "wheel" "dialout" "uucp"];
    shell = pkgs.nushell;
    openssh.authorizedKeys.keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID0bwDvMZZPs2ASyR+3l1tMqj3LQ6AmFhtEN9SVfL/EY valyn@nixos-desktop"];
  };

  # Bootloader
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 12;

  # Import Home Manager config
  home-manager.users.valyn = import ../../home/valyn;

  # Set hostname
  networking.hostName = "nixos-laptop";

  # Initial NixOS version
  system.stateVersion = "24.05";
}
