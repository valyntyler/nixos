{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ greetd.tuigreet ];
  services.greetd = {
    enable = true;
    settings = rec {
      initial_session = {
        command = "tuigreet --time --user-menu --asterisks";
        user = "valyn";
      };
      default_session = initial_session;
    };
  };
}
