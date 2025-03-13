{
  # browser
  programs.firefox = {
    enable = true;
    profiles."self" = {
      id = 0;
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
      id = 1;
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
