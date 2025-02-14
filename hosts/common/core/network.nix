{ host, ... }:

{
  networking = {
    # Enable networking
    networkmanager.enable = true;

    hostName = host;
    # wireless.enable = true;  # Enables wireless support via wpa_supplicant.

    # open ports for syncthing
    firewall.allowedTCPPorts = [ 8384 22000 8000 ];
    firewall.allowedUDPPorts = [ 22000 21027 8000 ];

    # Configure network proxy if necessary
    # proxy.default = "http://user:password@proxy:port/";
    # proxy.noProxy = "127.0.0.1,localhost,internal.domain";

    # Open ports in the firewall.
    # firewall.allowedTCPPorts = [ ... ];
    # firewall.allowedUDPPorts = [ ... ];
    # Or disable the firewall altogether.
    # firewall.enable = false;
  };
}
