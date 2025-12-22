{
  nixpkgs = {
    config.allowUnfree = true;
    overlays = [
      (import ../../../overlay/toktop.nix)
    ];
  };
}
