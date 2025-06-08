{
  inputs,
  pkgs,
  ...
}: {
  home.packages = [
    inputs.nvf.packages.x86_64-linux.default
    pkgs.gdtoolkit_4
  ];

  programs.nushell.environmentVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}
