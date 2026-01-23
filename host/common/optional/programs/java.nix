{pkgs, ...}: {
  programs.java = {
    enable = true;
    binfmt = true;
    package = with pkgs.javaPackages.compiler; openjdk25;
  };
}
