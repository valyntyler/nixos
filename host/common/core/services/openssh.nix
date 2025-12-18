{
  services.openssh = {
    enable = true;
    ports = [22];
    authorizedKeysInHomedir = false;
    settings = {
      PasswordAuthentication = false;
      UseDns = false;
      X11Forwarding = false;
      PermitRootLogin = "prohibit-password";
    };
  };
  users.users.root.openssh.authorizedKeys.keys = [];
}
