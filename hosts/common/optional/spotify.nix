{ inputs, pkgs, ... }:

{
  nixpkgs.overlays = [ inputs.spotx.overlays.spotx ];
  environment.systemPackages = with pkgs; [ spotify ];
}
