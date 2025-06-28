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
}
