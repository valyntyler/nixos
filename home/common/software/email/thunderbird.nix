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
      "ia" = {inherit search;};
      "uni" = {inherit search;};
      "self" = {inherit search;};
      "work" = {
        isDefault = true;
        inherit search;
      };
    };
  };
}
