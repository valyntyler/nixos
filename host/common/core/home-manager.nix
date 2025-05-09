{inputs, ...}: {
  home-manager = {
    users.valyn = import ../../../home/valyn;
    extraSpecialArgs = {inherit inputs;};

    useGlobalPkgs = true;
    useUserPackages = true;

    backupFileExtension = "bak";
  };
}
