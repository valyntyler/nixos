{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/gnome.nix
    ../common/optional/xdg.nix
    ../common/optional/programs/discord.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/services/jellyfin.nix
    ../common/optional/services/mullvad.nix
    ../common/optional/services/nginx.nix
    ../common/optional/services/pipewire.nix
    ../common/optional/services/qbittorrent.nix
    ../common/optional/hardware/bluetooth.nix
    ../common/optional/hardware/graphics.nix
    ../common/optional/hardware/nvidia.nix
    ../common/optional/hardware/openrgb.nix
    ../common/optional/hardware/openrazer.nix
    ../common/optional/hardware/xone.nix
  ];

  # for wireless headphones
  boot.kernelParams = ["usbcore.autosuspend=-1"];

  # Initial NixOS version
  system.stateVersion = "24.11";
}
