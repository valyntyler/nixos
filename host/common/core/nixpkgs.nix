{
  nixpkgs = {
    config.allowUnfree = true;
    overlays = [
      (import ../../../overlay/toktop.nix)
      (import ../../../overlay/yazi-flavors/gruvbox-dark.nix)
    ];
  };
}
