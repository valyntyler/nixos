{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ greetd.tuigreet ];
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "tuigreet";
        user = "valyn";
      };
      default_session = initial_session;
    };
  };
}
