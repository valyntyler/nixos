{inputs, ...}: {
  home.packages = [inputs.nvf.packages.x86_64-linux.default];

  programs.nushell.environmentVariables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}
