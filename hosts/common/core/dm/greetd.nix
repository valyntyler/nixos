{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [ greetd.tuigreet ];
  services.greetd = {
    enable = true;
    settings = {
      vt = 1;
      default_session = {
        command = "tuigreet --time --user-menu --asterisks";
        user = "greeter";
      };
    };
  };
}
