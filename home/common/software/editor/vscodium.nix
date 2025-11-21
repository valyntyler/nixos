{pkgs, ...}: {
  programs.vscode.enable = true;
  programs.vscode.package = pkgs.vscode;
  programs.vscode.profiles.default = {
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
    ];
  };
}
