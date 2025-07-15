{
  pkgs,
  user,
  ...
}: {
  users.users.${user}.extraGroups = ["jackaudio"];
  environment.systemPackages = with pkgs; [
    guitarix
    qjackctl
  ];
  services.jack = {
    jackd.enable = true;
    # support ALSA only programs via ALSA JACK PCM plugin
    alsa.enable = false;
    # support ALSA only programs via loopback device (supports programs like Steam)
    loopback = {
      enable = true;
      # buffering parameters for dmix device to work with ALSA only semi-professional sound programs
      #dmixConfig = ''
      #  period_size 2048
      #'';
    };
  };
}
