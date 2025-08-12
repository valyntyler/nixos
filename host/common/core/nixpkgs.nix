{
  nixpkgs = {
    config.allowUnfree = true;
    overlays = [
      (import ../../../overlay/yazi-flavors/gruvbox-dark.nix)
    ];
  };
}
