{
  networking.firewall = let
    iperf = 5201;
  in {
    allowedTCPPorts = [iperf];
    allowedUDPPorts = [iperf];
  };
}
