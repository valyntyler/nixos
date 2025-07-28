{host, ...}: {
  networking = {
    # Enable networking
    networkmanager.enable = true;
    hostName = host;
    # wireless.enable = true;  # Enables wireless support via wpa_supplicant.

    # firewall.allowedTCPPorts = [8384 22000 8000 8080 57621 9300];
    # firewall.allowedUDPPorts = [22000 21027 8000 8080 5353 9300];

    # Configure network proxy if necessary
    # proxy.default = "http://user:password@proxy:port/";
    # proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  };
}
