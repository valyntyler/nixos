{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/programs/discord.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/services/kanata.nix
    ../common/optional/hardware/graphics.nix
    ../common/optional/hardware/nvidia.nix
  ];

  # Set hostname
  networking.hostName = "nixos-laptop";

  # Initial NixOS version
  system.stateVersion = "24.05";
}
