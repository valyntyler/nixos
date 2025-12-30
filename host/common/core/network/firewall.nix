{
  networking.firewall = {
    allowedTCPPorts = [80 443];
    allowedUDPPorts = [
      24454 # MC simple voice chat mod
    ];
  };
}
