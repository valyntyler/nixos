{ pkgs, ... }:

{
  # browser
  programs.firefox = {
    enable = true;
    profiles."self" = {
      id = 0;
      isDefault = false;
      search.default = "Unduck";
      search.force = true;
      search.engines = {
        "Bing".metaData.hidden = true;
        "Google".metaData.alias = "@g";
        "Unduck" = let
          url = "https://unduck.link";
        in {
          urls = [{
            template = url;
            params = [{ name = "q"; value = "{searchTerms}"; }];
            iconUpdateURL = "${url}/search.svg";
            updateInterval = 24 * 60 * 60 * 1000;
          }];
        };
      };
    };
    profiles."work" = {
      id = 1;
      isDefault = true;
      search.default = "Unduck";
      search.force = true;
      search.engines = {
        "Bing".metaData.hidden = true;
        "Google".metaData.alias = "@g";
        "Unduck" = let
          url = "https://unduck.link";
        in {
          urls = [{
            template = url;
            params = [{ name = "q"; value = "{searchTerms}"; }];
            iconUpdateURL = "${url}/search.svg";
            updateInterval = 24 * 60 * 60 * 1000;
          }];
        };
        "Nix Packages" = {
          icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
          definedAliases = [ "@np" ];
          urls = [{
            template = "https://search.nixos.org/packages";
            params = [{ name = "query"; value = "{searchTerms}"; }];
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
