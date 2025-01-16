{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/hyprland.nix
    ../common/optional/steam.nix
    ../common/optional/spotify.nix
    ../common/optional/syncthing.nix
    ../common/optional/kanata.nix
    ../common/optional/atuin.nix
    ../common/optional/virtualbox.nix
  ];

  # Enable flakes and nix command
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Define a user account
  users.users.valyn = {
    isNormalUser = true;
    description = "Valyn";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable some core programs
  programs.dconf.enable = true;
  programs.zsh.enable = true;

  environment.systemPackages = with pkgs; [ vim git ];

  # Set the default editor to nvim
  environment.variables.EDITOR = "nvim";

  system.stateVersion = "24.05";
}
