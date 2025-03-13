{
  # browser
  programs.firefox = {
    enable = true;
    profiles."self" = {
      isDefault = false;
      search = {
        default = "Unduck";
        force = true;
        engines."Unduck".urls = [{
          template =  "https://unduck.link";
          params = [{ name = "q"; value = "{searchTerms}"; }];
        }];
      };
    };
    profiles."work" = {
      isDefault = true;
      search = {
        default = "Unduck";
        force = true;
        engines."Unduck".urls = [{
          template =  "https://unduck.link";
          params = [{ name = "q"; value = "{searchTerms}"; }];
        }];
      };
    };
  };
}
