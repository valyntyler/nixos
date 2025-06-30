{
  imports = [
    ./hardware-configuration.nix
    ../common/optional/services/nginx.nix
    ../common/core
  ];

  # Bootloader
  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  # Allow root access
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID0bwDvMZZPs2ASyR+3l1tMqj3LQ6AmFhtEN9SVfL/EY valyn@nixos-desktop"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEPPZCKMfsY3wdpHIfYPQ2mGTwaMOp5ANKjwG4hs3Iig valyn@nixos-laptop"
  ];

  # Initial NixOS version
  system.stateVersion = "24.11";
}
