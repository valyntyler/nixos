{
  services.syncthing = {
    enable = true;
    user = "valyn";

    overrideFolders = true;
    overrideDevices = true;

    configDir = "/home/valyn/.config/syncthing";
    dataDir = "/home/valyn";

    settings = {
      folders."obsidian" = {
        path = "~/obsidian";
        devices = [ "phone" "raspi" ];
      };

      devices.phone = { id = "ZM3DTSX-SCONYIW-H52CZ3C-O7QK2EP-QCKU7M3-B2FKLBA-ZQ6AE7D-LNBGNQN"; introducer = true; };
      devices.raspi = { id = "CKLQUXJ-OZ7376G-SIJJTGS-Q7WKT4Y-UYYH2EE-DEU2PCC-YFRW67Z-NDKOPAN"; introducer = false; };
    };
  };

  # Don't create default ~/Sync folder
  systemd.services.syncthing.environment.STNODEFAULTFOLDER = "true";
}
