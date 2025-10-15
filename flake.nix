{
  description = "My custom NixOS flake";

  inputs = {
    # import nixpkgs flake
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # import home manager flake
    home-manager.url = "github:nix-community/home-manager";

    # import custom nvf flake
    nvf.url = "github:valyntyler/nvf";

    # import hardware config
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

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
    nixos-hardware,
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

    # laptop
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

    # stick
    nixosConfigurations.stick = nixpkgs.lib.nixosSystem {
      specialArgs = {
        inherit inputs;
        user = "thumb";
        host = "stick";
      };
      modules = [
        ./modules/nixos
        ./host/stick
        home-manager.nixosModules.home-manager
      ];
    };
  };
}
