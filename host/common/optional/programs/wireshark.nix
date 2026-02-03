{
  inputs,
  user,
  ...
}: let
  pkgs = inputs.nixpkgs-termshark.legacyPackages.x86_64-linux;
in {
  users.users.${user}.extraGroups = ["wireshark"];
  services.udev.extraRules = ''
    SUBSYSTEM=="usbmon", GROUP="wireshark", MODE="0640"
  '';
  environment.systemPackages = with pkgs; [
    termshark
    wireshark
  ];
  programs.wireshark = {
    enable = true;
    dumpcap.enable = true;
    usbmon.enable = true;
  };
}
