{
  lib,
  pkgs,
  user,
  ...
}: {
  users.users.${user} = {
    isNormalUser = true;
    shell = pkgs.nushell;
    description = lib.toSentenceCase user;
    extraGroups = [
      "dialout"
      "networkmanager"
      "uucp"
      "wheel"
    ];
  };
}
