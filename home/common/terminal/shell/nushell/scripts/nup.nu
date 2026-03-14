def nup [] {
  let path = $env.NH_FLAKE;
  nix flake update --flake $path --commit-lock-file
}
