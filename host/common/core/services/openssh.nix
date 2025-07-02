{
  services.openssh = {
    enable = true;
    ports = [22];
    authorizedKeysInHomedir = false;
    settings = {
      PasswordAuthentication = false;
      UseDns = false;
      X11Forwarding = false;
      PermitRootLogin = "prohibit-password"; # "yes", "without-password", "prohibit-password", "forced-commands-only", "no"
    };
  };
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAID0bwDvMZZPs2ASyR+3l1tMqj3LQ6AmFhtEN9SVfL/EY valyn@nixos-desktop"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEPPZCKMfsY3wdpHIfYPQ2mGTwaMOp5ANKjwG4hs3Iig valyn@nixos-laptop"
  ];
}
