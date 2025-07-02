{
  config,
  lib,
  pkgs,
  ...
}:
with lib; let
  cfg = config.services.qbittorrent;
  UID = 888;
  GID = 888;
in {
  config = mkIf cfg.enable {
    networking.firewall = mkIf cfg.openFirewall {
      allowedTCPPorts = [cfg.port];
    };

    systemd.services.qbittorrent = {
      # based on the plex.nix service module and
      # https://github.com/qbittorrent/qBittorrent/blob/master/dist/unix/systemd/qbittorrent-nox%40.service.in
      description = "qBittorrent-nox service";
      documentation = ["man:qbittorrent-nox(1)"];
      after = ["network.target"];
      wantedBy = ["multi-user.target"];

      serviceConfig = {
        Type = "simple";
        User = cfg.user;
        Group = cfg.group;

        # Run the pre-start script with full permissions (the "!" prefix) so it
        # can create the data directory if necessary.
        ExecStartPre = let
          preStartScript = pkgs.writeScript "qbittorrent-run-prestart" ''
            #!${pkgs.bash}/bin/bash

            # Create data directory if it doesn't exist
            if ! test -d "$QBT_PROFILE"; then
              echo "Creating initial qBittorrent data directory in: $QBT_PROFILE"
              install -d -m 0755 -o "${cfg.user}" -g "${cfg.group}" "$QBT_PROFILE"
            fi
          '';
        in "!${preStartScript}";

        #ExecStart = "${pkgs.qbittorrent-nox}/bin/qbittorrent-nox";
        ExecStart = "${cfg.package}/bin/qbittorrent-nox";
        # To prevent "Quit & shutdown daemon" from working; we want systemd to
        # manage it!
        #Restart = "on-success";
        #UMask = "0002";
        #LimitNOFILE = cfg.openFilesLimit;
      };

      environment = {
        QBT_PROFILE = cfg.dataDir;
        QBT_WEBUI_PORT = toString cfg.port;
      };
    };

    users.users = mkIf (cfg.user == "qbittorrent") {
      qbittorrent = {
        group = cfg.group;
        uid = UID;
      };
    };

    users.groups = mkIf (cfg.group == "qbittorrent") {
      qbittorrent = {gid = GID;};
    };
  };
}
