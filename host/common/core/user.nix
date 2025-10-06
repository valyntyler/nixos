{
  lib,
  pkgs,
  user,
  ...
}: {
  # Add a user
  users.users.${user} = {
    isNormalUser = true;
    description = lib.toSentenceCase user;
    extraGroups = ["networkmanager" "wheel" "dialout" "uucp"];
    shell = pkgs.nushell;
  };
}
