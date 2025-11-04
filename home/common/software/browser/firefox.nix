{pkgs, ...}: {
  programs.firefox = {
    enable = true;
    nativeMessagingHosts = [pkgs.firefoxpwa];
    policies = {
      DisableTelemetry = true;
      EnableTrackingProtection = {
        Value = true;
        Locked = true;
        Cryptomining = true;
        Fingerprinting = true;
      };
      DisablePocket = true;
      DisplayBookmarksToolbar = "never";
    };

    profiles = let
      isDefault = false;
      search = {
        default = "Unduck";
        force = true;
        order = ["Unduck"];
        engines = {
          # custom search engines
          "Unduck" = {
            urls = [{template = "https://unduck.link?q={searchTerms}";}];
            iconMapObj."16" = "https://unduck.link/search.svg";
            updateInterval = 24 * 60 * 60 * 1000;
          };

          # disable defaults
          bing.metaData.hidden = true;
          google.metaData.hidden = true;
          ddg.metaData.hidden = true;
          wikipedia.metaData.hidden = true;
        };
      };
    in {
      "work" = {
        id = 0;
        isDefault = true;
        search =
          search
          // {
            order = ["Unduck" "Nix Packages" "MyNixOS"];
            engines = {
              "Unduck" = search.engines."Unduck";

              "Nix Packages" = {
                urls = [{template = "https://search.nixos.org/packages?type=packages&query={searchTerms}";}];
                iconMapObj."16" = "https://search.nixos.org/favicon.png";
                definedAliases = ["@np"];
              };

              "MyNixOS" = {
                urls = [{template = "https://mynixos.com/search?q={searchTerms}";}];
                iconMapObj."16" = "https://mynixos.com/favicon-dark.svg";
                definedAliases = ["@mn"];
              };

              # disable defaults
              bing.metaData.hidden = true;
              google.metaData.hidden = true;
              ddg.metaData.hidden = true;
              wikipedia.metaData.hidden = true;
            };
          };
      };

      "self" = {
        inherit isDefault search;
        id = 1;
      };

      "music" = {
        inherit isDefault search;
        id = 2;
      };

      "uni" = {
        inherit isDefault search;
        id = 3;
      };

      "ia" = {
        inherit isDefault search;
        id = 4;
      };
    };
  };
}
