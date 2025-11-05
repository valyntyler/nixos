{inputs, ...}: {
  home.packages = [inputs.flint.packages."x86_64-linux".default];
}
