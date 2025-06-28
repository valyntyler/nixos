{
  inputs,
  user,
  ...
}: {
  home-manager = {
    users.${user} = import ../../../home/${user};
    extraSpecialArgs = {inherit inputs;};
    useGlobalPkgs = true;
    useUserPackages = true;
    backupFileExtension = "bak";
  };
}
