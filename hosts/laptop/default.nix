{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/programs/discord.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/services/kanata.nix
  ];

  # Set hostname
  networking.hostName = "nixos-laptop";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable flakes and nix command
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Initial NixOS version
  system.stateVersion = "24.05";
}
