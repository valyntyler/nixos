{
  config,
  pkgs,
  ...
}: {
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
    ../common/optional/programs/gamemode.nix
    ../common/optional/programs/gamescope.nix
    ../common/optional/programs/java.nix
    ../common/optional/programs/localsend.nix
    ../common/optional/programs/nix-ld.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/programs/wireshark.nix
    ../common/optional/services/kanata.nix
    ../common/optional/services/pipewire.nix
    ../common/optional/virtual/docker.nix
    ../common/optional/virtual/podman.nix
  ];

  # dolphin-emu
  services.udev.packages = [pkgs.dolphin-emu];
  boot = {
    extraModulePackages = [config.boot.kernelPackages.gcadapter-oc-kmod];
    kernelModules = ["gcadapter_oc"];
  };

  system.stateVersion = "25.11";
}
