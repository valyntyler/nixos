{
  description = "My custom NixOS flake";

  inputs = {
    # import nixpkgs flake
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # import home manager flake
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # import custom nvf flake
    nvf.url = "github:valyntyler/nvf";

    # import zen browser flake
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
    zen-browser.inputs.nixpkgs.follows = "nixpkgs";

    # import firefox runner
    wofizilla.url = "github:valyntyler/wofizilla";
    wofizilla.inputs.nixpkgs.follows = "nixpkgs";

    # import winboat flake
    winboat.url = "github:TibixDev/winboat";
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
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
        ./modules/nixos
        ./host/desktop
        home-manager.nixosModules.home-manager
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
        ./modules/nixos
        ./host/laptop
        home-manager.nixosModules.home-manager
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
        ./modules/nixos
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
        ./modules/nixos
        ./host/centre1
        home-manager.nixosModules.home-manager
      ];
    };
  };
}
