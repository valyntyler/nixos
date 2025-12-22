{
  description = "My custom NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-mc.url = "github:ChandlerSwift/nixpkgs/update-minecraft-1.21.11";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.05";
    nixpkgs-yazi-flavors.url = "github:valyntyler/nixpkgs/yazi-flavors";

    flake-parts.url = "github:hercules-ci/flake-parts";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    nvf.url = "github:valyntyler/nvf";
    nvf.inputs.nixpkgs.follows = "nixpkgs";

    flint.url = "github:notashelf/flint";
    flint.inputs.nixpkgs.follows = "nixpkgs";

    # import zen browser flake
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    zen-browser.inputs.nixpkgs.follows = "nixpkgs";
    zen-browser.inputs.home-manager.follows = "home-manager";

    # import firefox runner
    wofizilla.url = "github:valyntyler/wofizilla";
    wofizilla.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    nixpkgs,
    flake-parts,
    home-manager,
    nixos-hardware,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];
      imports = [
        ./systems/desktop.nix
        ./systems/frame12.nix
      ];
    };
}
