{pkgs, ...}: {
  environment.systemPackages = with pkgs; [wireshark];
  programs.wireshark = {
    enable = true;
    dumpcap.enable = true;
    usbmon.enable = true;
  };
}
