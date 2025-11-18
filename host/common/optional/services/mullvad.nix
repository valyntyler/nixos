{inputs, ...}: let
  pkgs-stable = inputs.nixpkgs-stable.legacyPackages.x86_64-linux;
in {
  environment.systemPackages = with pkgs-stable; [mullvad-vpn];
  services.mullvad-vpn = {
    enable = true;
    package = pkgs-stable.mullvad-vpn;
  };
}
