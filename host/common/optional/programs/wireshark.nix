{pkgs, ...}: {
  users.users."valyn".extraGroups = ["wireshark"];
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
