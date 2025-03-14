{ pkgs, inputs, ... }:

{
  # browser
  programs.firefox = let
    unduck.urls = [{
      template =  "https://unduck.link";
      params = [{ name = "q"; value = "{searchTerms}"; }];
    }];
    nixpackages = {
      definedAliases = [ "@np" ];
      icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
      urls = [{
        template = "https://search.nixos.org/packages";
        params = [
          { name = "type"; value = "packages"; }
          { name = "query"; value = "{searchTerms}"; }
        ];
      }];
    };
    nixoswiki = {
      "NixOS Wiki" = {
        definedAliases = [ "@nw" ];
        iconUpdateURL = "https://wiki.nixos.org/favicon.png";
        updateInterval = 24 * 60 * 60 * 1000; # every day
        urls = [{ template = "https://wiki.nixos.org/index.php?search={searchTerms}"; }];
      };
    };
    mynixos = {
      "MyNixOS" = {
        definedAliases = [ "@mn" ];
        iconUpdateURL = "https://wiki.nixos.org/favicon.png";
        updateInterval = 24 * 60 * 60 * 1000; # every day
        urls = [{
          template = "https://mynixos.com/search";
          params = [{ name = "q"; value = "{searchTerms}"; }];
        }];
      };
    };
  in {
    enable = true;
    package = inputs.firefox.packages.${pkgs.system}.firefox-nightly-bin;
    profiles."self" = {
      id = 0;
      isDefault = false;
      search = {
        default = "Unduck";
        force = true;
        engines = {
          # client-side duckduckgo !bangs
          "Unduck" = unduck;

          # nixos options
          "Nix Packages" = nixpackages;
          "NixOS Wiki" = nixoswiki;
          "My NixOS" = mynixos;

          # disable defaults
          "Bing".metaData.hidden = true;
          "Google".metaData.hidden = true;
          "Wikipedia".metaData.hidden = true;
        };
      };
    };
    profiles."work" = {
      id = 1;
      isDefault = true;
      search = {
        default = "Unduck";
        force = true;
        engines = {
          # client-side duckduckgo !bangs
          "Unduck" = unduck;

          # disable defaults
          "Bing".metaData.hidden = true;
          "Google".metaData.hidden = true;
          "Wikipedia".metaData.hidden = true;
        };
      };
    };
  };
}
