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
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID0bwDvMZZPs2ASyR+3l1tMqj3LQ6AmFhtEN9SVfL/EY valyn@nixos-desktop"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEPPZCKMfsY3wdpHIfYPQ2mGTwaMOp5ANKjwG4hs3Iig valyn@nixos-laptop"
    ];
  };
}
