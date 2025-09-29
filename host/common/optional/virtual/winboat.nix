{
  pkgs,
  inputs,
  ...
}: {
  imports = [./docker.nix];

  boot.kernelModules = ["ip_tables" "iptable_nat"];

  environment.systemPackages = with pkgs;
  with inputs.winboat.packages.x86_64-linux; [
    freerdp
    winboat
  ];
}
