{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/gnome.nix
    ../common/optional/home-manager.nix
    ../common/optional/xdg.nix
    ../common/optional/hardware/graphics.nix
    ../common/optional/programs/discord.nix
    ../common/optional/programs/nix-ld.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/services/kanata.nix
    ../common/optional/services/mullvad.nix
  ];

  system.stateVersion = "25.11";
}
