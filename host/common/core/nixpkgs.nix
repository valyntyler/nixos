{
  nixpkgs = {
    config.allowUnfree = true;
    overlays = [(import ../../../overlay/spotx.nix)];
  };
}
