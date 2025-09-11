{
  # email client
  programs.thunderbird = let
    search = {
      default = "ddg";
      force = true;
    };
  in {
    enable = true;
    profiles."school" = {inherit search;};
    profiles."self" = {inherit search;};
    profiles."work" = {
      isDefault = true;
      inherit search;
    };
  };
}
