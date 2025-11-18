{
  description = "My custom NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
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
    home-manager,
    nixos-hardware,
    ...
  } @ inputs: {
    nixosConfigurations.frame12 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {
        inherit inputs;
        user = "valyn";
        host = "frame12";
      };
      modules = [
        ./modules/nixos
        ./host/frame12
        home-manager.nixosModules.home-manager
        nixos-hardware.nixosModules.framework-12-13th-gen-intel
      ];
    };
  };
}
