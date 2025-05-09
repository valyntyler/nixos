{
  description = "My custom NixOS flake";

  inputs = {
    # import nixpkgs flake
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # import home manager flake
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # import custom nixvim flake
    nixvim.url = "github:valyntyler/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    # import custom nvf flake
    nvf.url = "github:valyntyler/nvf";
    nvf.inputs.nixpkgs.follows = "nixpkgs";

    # import spotify overlay flake
    spotx.url = "github:oskardotglobal/.dotfiles/nix";
    spotx.inputs.nixpkgs.follows = "nixpkgs";

    # import anyrun flake
    anyrun.url = "github:anyrun-org/anyrun";
    anyrun.inputs.nixpkgs.follows = "nixpkgs";

    # import firefox runner
    wofizilla.url = "github:valyntyler/wofizilla";
    wofizilla.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    home-manager-config.home-manager = {
      users."valyn" = import ./home/valyn;
      extraSpecialArgs = {inherit inputs;};

      useGlobalPkgs = true;
      useUserPackages = true;
      backupFileExtension = "bak";
    };
  in {
    # desktop
    nixosConfigurations.nixos-desktop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        ./host/desktop
        home-manager-config
        inputs.home-manager.nixosModules.home-manager
      ];
    };

    # laptop
    nixosConfigurations.nixos-laptop = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {inherit inputs;};
      modules = [
        ./host/laptop
        home-manager-config
        inputs.home-manager.nixosModules.home-manager
      ];
    };
  };
}
