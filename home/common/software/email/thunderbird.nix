{
  # email client
  programs.thunderbird = let
    search = {
      default = "ddg";
      force = true;
    };
  in {
    enable = true;
    profiles."self" = {
      isDefault = false;
      inherit search;
    };
    profiles."work" = {
      isDefault = true;
      inherit search;
    };
  };
}
