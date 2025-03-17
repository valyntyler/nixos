{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.valyn = {
    isNormalUser = true;
    description = "Valyn";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };
}
