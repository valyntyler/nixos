{pkgs, ...}: {
  services.onlyoffice = {
    enable = true;
    wopi = true;
    port = 8441;
    hostname = "localhost";
    securityNonceFile = "${pkgs.writeText "nixos-test-onlyoffice-nonce.conf" ''
      set $secure_link_secret "nixostest";
    ''}";
  };
}
