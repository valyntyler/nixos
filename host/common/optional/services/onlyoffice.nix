{pkgs, ...}: {
  services.onlyoffice = {
    enable = true;
    # wopi = true;
    port = 8111;
    hostname = "office.valyntyler.com";
    securityNonceFile = "${pkgs.writeText "nixos-test-onlyoffice-nonce.conf" ''
      set $secure_link_secret "nixostest";
    ''}";
  };
  services.nginx.virtualHosts."office.valyntyler.com" = {
    forceSSL = true;
    enableACME = true;
  };
  system.activationScripts.onlyoffice-readable.text = ''
    chmod a+x /var/lib/onlyoffice/documentserver/
  '';
  networking.firewall.allowedTCPPorts = [8111];
}
