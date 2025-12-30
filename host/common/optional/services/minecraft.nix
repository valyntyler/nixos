{pkgs, ...}: {
  services.minecraft-servers = {
    enable = true;
    eula = true;
    servers."frigginfrogs.gay" = {
      enable = true;
      autoStart = true;
      openFirewall = true;
      package = pkgs.fabricServers.fabric-1_21_11;
      jvmOpts = [
        "-Djava.net.preferIPv4Stack=true"
      ];
      serverProperties = {
        motd = "§cf§6r§ei§ag§3g§9i§5n§cf§6r§eo§ag§3s§9.§5g§ca§6y";
        server-port = 25565;
        gamemode = "survival";
        difficulty = "hard";
        white-list = false;
        spawn-protection = 0;

        # RCON settings
        enable-rcon = true;
        "rcon.password" = "sesam";
        "rcon.port" = 25575;
        broadcast-rcon-to-ops = false;
      };
    };
  };
}
