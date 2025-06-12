{
  # Enable GPU drivers
  services.xserver.videoDrivers = [
    "modesetting"
    "nvidia"
  ];
  hardware.nvidia = {
    open = true;
    modesetting.enable = true;
    powerManagement.enable = true;
    prime = {
      offload.enable = true;
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };
  environment.variables = {
    "PRIME_RENDER_OFFLOAD" = "1";
    "GLX_VENDOR_LIBRARY_NAME" = "nvidia";
  };
}
