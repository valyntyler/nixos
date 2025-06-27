{
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

  # Import Home Manager config
  home-manager.users.valyn = import ../../home/valyn;

  # Set hostname
  networking.hostName = "nixos-laptop";

  # Initial NixOS version
  system.stateVersion = "24.05";
}
