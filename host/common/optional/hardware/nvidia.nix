{
  services.xserver.videoDrivers = ["nvidia" "modesetting"];
  hardware.nvidia = {
    open = true;
    nvidiaSettings = false;
    modesetting.enable = true;
  };
}
