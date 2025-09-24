{
  # email client
  programs.thunderbird = let
    search = {
      default = "ddg";
      force = true;
    };
  in {
    enable = true;
    profiles = {
      "uni" = {inherit search;};
      "self" = {inherit search;};
      "work" = {
        isDefault = true;
        inherit search;
      };
    };
  };
}
