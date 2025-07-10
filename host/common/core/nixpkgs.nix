{
  nixpkgs = {
    config.allowUnfree = true;
    overlays = [
      (import ../../../overlay/spotx.nix)
      (import ../../../overlay/yazi-flavors/gruvbox-dark.nix)
    ];
  };
}
