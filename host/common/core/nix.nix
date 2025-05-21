{
  nix.settings = {
    # Enable flakes and nix command
    experimental-features = ["nix-command" "flakes"];

    # Add binary cache
    trusted-substituters = ["https://nix-community.cachix.org"];
    trusted-public-keys = ["nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="];
  };
}
