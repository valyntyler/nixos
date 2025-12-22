{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/de/gnome
    ../common/optional/de/niri
    ../common/optional/dm/gdm
    ../common/optional/home-manager.nix
    ../common/optional/xdg.nix
    ../common/optional/hardware/graphics.nix
    ../common/optional/programs/appimage.nix
    ../common/optional/programs/discord.nix
    ../common/optional/programs/gamescope.nix
    ../common/optional/programs/localsend.nix
    ../common/optional/programs/nix-ld.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/services/mullvad.nix
  ];

  system.stateVersion = "25.11";
}
