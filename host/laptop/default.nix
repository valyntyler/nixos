{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/gnome.nix
    ../common/optional/xdg.nix
    ../common/optional/programs/discord.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/services/kanata.nix
    ../common/optional/services/mullvad.nix
    ../common/optional/hardware/bluetooth.nix
    ../common/optional/hardware/graphics.nix
    ../common/optional/hardware/nvidia.nix
  ];

  # Initial NixOS version
  system.stateVersion = "24.05";
}
