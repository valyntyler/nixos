{modulesPath, ...}: {
  imports = [
    "${modulesPath}/installer/cd-dvd/installation-cd-minimal.nix"
    ../common/core
    ../common/optional/gnome.nix
    ../common/optional/home-manager.nix
    ../common/optional/services/kanata.nix
  ];

  nixpkgs.hostPlatform = "x86_64-linux";
}
