{inputs, ...}: {
  targets.genericLinux.enable = true;
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    package = inputs.nixpkgs-stable.legacyPackages.x86_64-linux.mesa;
  };
}
