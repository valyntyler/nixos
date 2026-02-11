{pkgs, ...}: {
  services.onlyoffice = {
    enable = true;
    hostname = "localhost";
    securityNonceFile = "${pkgs.writeText "nixos-test-onlyoffice-nonce.conf" ''
      set $secure_link_secret "nixostest";
    ''}";
  };
}
