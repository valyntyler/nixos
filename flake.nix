{
  description = "My custom NixOS flake";

  inputs = {
    # import nixpkgs flake
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # import home manager flake
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # import stylix flake
    stylix.url = "github:nix-community/stylix";

    # import custom nvf flake
    nvf.url = "github:valyntyler/nvf";

    # import firefox runner
    wofizilla.url = "github:valyntyler/wofizilla";
    wofizilla.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    stylix,
    ...
  } @ inputs: {
    # desktop
    nixosConfigurations.nixos-desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {
        inherit inputs;
        user = "valyn";
        host = "nixos-desktop";
      };
      modules = [
        ./host/desktop
        home-manager.nixosModules.home-manager
        stylix.nixosModules.stylix
      ];
    };

    # laptop
    nixosConfigurations.nixos-laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {
        inherit inputs;
        user = "valyn";
        host = "nixos-laptop";
      };
      modules = [
        ./host/laptop
        home-manager.nixosModules.home-manager
        stylix.nixosModules.stylix
      ];
    };

    # centre0
    nixosConfigurations.centre0 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {
        inherit inputs;
        user = "think";
        host = "centre0";
      };
      modules = [
        ./host/centre0
        home-manager.nixosModules.home-manager
      ];
    };

    # centre1
    nixosConfigurations.centre1 = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {
        inherit inputs;
        user = "think";
        host = "centre1";
      };
      modules = [
        ./host/centre1
        home-manager.nixosModules.home-manager
      ];
    };
  };
}
