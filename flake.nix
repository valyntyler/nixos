{
  description = "A simple NixOS flake";

  inputs = {
    # nixpkgs
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # nixvim
    nixvim.url = "github:valyntyler/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.nixos-desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; };
      modules = [
        ./hosts/desktop
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;

          # import configuration
          home-manager.users."valyn" = import ./home;
          home-manager.extraSpecialArgs = { inherit inputs; };
        }
      ];
    };
  };
}

