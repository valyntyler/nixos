{
  # email client
  programs.thunderbird = {
    enable = true;
    profiles."self" = {
      isDefault = false;
      search = {
        default = "ddg";
        force = true;
      };
    };
    profiles."work" = {
      isDefault = true;
      search = {
        default = "ddg";
        force = true;
      };
    };
  };
}
