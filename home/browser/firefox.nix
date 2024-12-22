{ pkgs, ... }:

{
  # browser
  programs.firefox = {
    enable = true;
    profiles."self" = {
      id = 0;
      isDefault = false;
      search.default = "DuckDuckGo";
      search.force = true;
    };
    profiles."work" = {
      id = 1;
      isDefault = true;
      search.default = "DuckDuckGo";
      search.force = true;
      search.engines = {
        "Nix Packages" = {
          urls = [{
            template = "https://search.nixos.org/packages";
            params = [
            { name = "query"; value = "{searchTerms}"; }
            ];
          }];
          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@np" ];
        };
        "Nix Options" = {
          definedAliases = [ "@no" ];
          urls = [{
            template = "https://mynixos.com/search";
            params = [
            { name = "q"; value = "{searchTerms}"; }
            ];
          }];
        };
        "NixVim Options" = {
          definedAliases = [ "@nv" ];
          urls = [{
            template = "https://nix-community.github.io/nixvim";
            params = [
            { name = "search"; value = "{searchTerms}"; }
            ];
          }];
        };
      };
    };
  };
}
