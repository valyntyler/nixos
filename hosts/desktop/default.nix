{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/programs/discord.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
  ];

  # Set hostname
  networking.hostName = "nixos-desktop";

  # Initial NixOS version
  system.stateVersion = "24.11";
}
