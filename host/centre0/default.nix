{pkgs, ...}: {
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

  # Add a user
  users.users.think = {
    isNormalUser = true;
    description = "Think";
    extraGroups = ["networkmanager" "wheel" "dialout" "uucp"];
    shell = pkgs.nushell;
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID0bwDvMZZPs2ASyR+3l1tMqj3LQ6AmFhtEN9SVfL/EY valyn@nixos-desktop"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEPPZCKMfsY3wdpHIfYPQ2mGTwaMOp5ANKjwG4hs3Iig valyn@nixos-laptop"
    ];
  };

  # Import Home Manager config
  home-manager.users.think = import ../../home/think;

  # Set hostname
  networking.hostName = "centre0";

  # Initial NixOS version
  system.stateVersion = "24.11";
}
