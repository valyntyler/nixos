{
  # Enable GPU drivers
  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia = {
    open = false; # open source drivers
    modesetting.enable = true;
    powerManagement.enable = true;
  };
  environment.variables = {
    "PRIME_RENDER_OFFLOAD" = "1";
    "GLX_VENDOR_LIBRARY_NAME" = "nvidia";
  };
}
