{inputs, ...}: let
  pkgs-mc = import inputs.nixpkgs-mc {
    system = "x86_64-linux";
    config.allowUnfree = true;
  };
in {
  services.minecraft-server = {
    enable = true;
    eula = true;
    package = pkgs-mc.minecraft-server;
    openFirewall = true;
    declarative = true;
    serverProperties = {
      motd = "§cf§6r§ei§ag§3g§9i§5n§cf§6r§eo§ag§3s§9.§5g§ca§6y";
      server-port = 25565;
      gamemode = "survival";
      difficulty = "hard";
      white-list = false;
      spawn-protection = 0;
      jvmOpts = "-Djava.net.preferIPv4Stack=true";
    };
  };
}
