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
        "Bing".metaData.hidden = true;
        "Google".metaData.alias = "@g";
        "Nix Packages" = {
          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@np" ];
          urls = [{
            template = "https://search.nixos.org/packages";
            params = [
            { name = "query"; value = "{searchTerms}"; }
            ];
          }];
        };
        "Nix Options" = {
          iconUpdateURL = "https://mynixos.com/favicon.ico";
          updateInterval = 24 * 60 * 60 * 1000;
          definedAliases = [ "@no" ];
          urls = [{
            template = "https://mynixos.com/search";
            params = [
            { name = "q"; value = "{searchTerms}"; }
            ];
          }];
        };
        "NixVim Options" = {
          iconUpdateURL = "https://github.com/nix-community/nixvim/blob/main/assets/nixvim_logo.svg";
          updateInterval = 24 * 60 * 60 * 1000;
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
