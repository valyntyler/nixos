let
  engines.unduck = {
    urls = [{template = "https://unduck.link?q={searchTerms}";}];
    iconMapObj."16" = "https://unduck.link/search.svg";
    updateInterval = 24 * 60 * 60 * 1000;
  };
in {
  programs.firefox = {
    enable = true;
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
          "Unduck" = engines.unduck;

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
              "Unduck" = engines.unduck;

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
    };
  };
}
