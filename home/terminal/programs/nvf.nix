{ inputs, ... }:

{
  home.packages = [ inputs.nvf.packages.x86_64-linux.default ];
}
