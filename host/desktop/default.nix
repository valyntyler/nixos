{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/programs/discord.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/hardware/graphics.nix
    ../common/optional/hardware/nvidia.nix
    ../common/optional/hardware/open-rgb.nix
    ../common/optional/hardware/razer.nix
    ../common/optional/hardware/xbox.nix
  ];

  # Set hostname
  networking.hostName = "nixos-desktop";

  # Initial NixOS version
  system.stateVersion = "24.11";
}
