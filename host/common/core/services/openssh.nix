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
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGIVxfTlZj47zMoLfBLVJgSXpsPE1h/9xSjs2hP31m7n valyn@desktop"
    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPpDGLs0LclHmsIzpXzLuvf7Ptyp7OEGsIrr2g/ZpzNL valyn@frame12"
  ];
}
