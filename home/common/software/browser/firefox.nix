let
  engines.unduck = {
    urls = [
      {
        template = "https://unduck.link";
        params = [
          {
            name = "q";
            value = "{searchTerms}";
          }
        ];
      }
    ];
    iconMapObj."16" = "https://unduck.link/search.svg";
    updateInterval = 24 * 60 * 60 * 1000; # every day
  };

  engines.nix-packages = {
    urls = [
      {
        template = "https://search.nixos.org/packages";
        params = [
          {
            name = "type";
            value = "packages";
          }
          {
            name = "query";
            value = "{searchTerms}";
          }
        ];
      }
    ];
    iconMapObj."16" = "https://search.nixos.org/favicon.png";
    definedAliases = ["@np"];
  };

  engines.mynixos = {
    urls = [
      {
        template = "https://mynixos.com/search";
        params = [
          {
            name = "q";
            value = "{searchTerms}";
          }
        ];
      }
    ];
    iconMapObj."16" = "https://mynixos.com/favicon-dark.svg";
    definedAliases = ["@mn"];
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

    profiles."self" = {
      id = 0;
      isDefault = false;
      search = {
        default = "Unduck";
        force = true;
        order = ["Unduck" "Nix Packages"];
        engines = {
          # custom search engines
          "Unduck" = engines.unduck;
          "Nix Packages" = engines.nix-packages;
          "MyNixOS" = engines.mynixos;

          # disable defaults
          bing.metaData.hidden = true;
          google.metaData.hidden = true;
          ddg.metaData.hidden = true;
          wikipedia.metaData.hidden = true;
        };
      };
    };

    profiles."work" = {
      id = 1;
      isDefault = true;
      search = {
        default = "Unduck";
        force = true;
        order = ["Unduck" "Nix Packages"];
        engines = {
          # custom search engines
          "Unduck" = engines.unduck;
          "Nix Packages" = engines.nix-packages;
          "MyNixOS" = engines.mynixos;

          # disable defaults
          bing.metaData.hidden = true;
          google.metaData.hidden = true;
          ddg.metaData.hidden = true;
          wikipedia.metaData.hidden = true;
        };
      };
    };
  };
}
