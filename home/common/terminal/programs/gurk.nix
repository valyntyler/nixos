{inputs, ...}: {
  programs.gurk-rs = {
    enable = true;
    package = inputs.gurk.packages."x86_64-linux".default;
  };
}
