{
  imports = [
    ./hardware-configuration.nix
    ../common/core
    ../common/optional/gnome.nix
    ../common/optional/xdg.nix
    ../common/optional/programs/discord.nix
    ../common/optional/programs/spotify.nix
    ../common/optional/programs/steam.nix
    ../common/optional/programs/wireshark.nix
    ../common/optional/services/clight.nix
    ../common/optional/services/jellyfin.nix
    ../common/optional/services/kanata.nix
    ../common/optional/services/mullvad.nix
    ../common/optional/hardware/bluetooth.nix
    ../common/optional/hardware/graphics.nix
    ../common/optional/hardware/nvidia.nix
    ../common/optional/virtual/docker.nix
    ../common/optional/virtual/virt-manager.nix
    ../common/optional/virtual/virtualbox.nix
    ../common/optional/virtual/winboat.nix
  ];

  boot.kernelParams = [
    # "mem_sleep_default=deep"
    "mem_sleep_default=s2idle"
    "i915.enable_psr=0"
  ];

  systemd.sleep.extraConfig = ''
    HibernateDelaySec=5m
    HibernateMode=platform shutdown
  '';

  services.logind.settings.Login = {
    HandleSuspendKey = "suspend-then-hibernate";
    HandleLidSwitch = "suspend-then-hibernate";
    HandleLidSwitchExternalPower = "suspend-then-hibernate";
    HandleLidSwitchDocked = "ignore";
    IdleAction = "suspend-then-hibernate";
    IdleActionSec = "30m";
  };

  # Initial NixOS version
  system.stateVersion = "24.05";
}
