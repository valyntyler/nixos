{pkgs, ...}:
pkgs.stdenv.mkDerivation rec {
  name = "gruvbox-dark";
  src = pkgs.fetchFromGitHub {
    owner = "bennyyip";
    repo = "${name}.yazi";
    rev = "91fdfa70f6d593934e62aba1e449f4ec3d3ccc90";
    hash = "sha256-RWqyAdETD/EkDVGcnBPiMcw1mSd78Aayky9yoxSsry4=";
  };
  installPhase = ''
    mkdir -p $out
    cp $src/* $out/
  '';
}
