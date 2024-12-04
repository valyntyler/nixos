{
  # browser
  programs.firefox = {
    enable = true;
    profiles."self" = {
      id = 0;
      isDefault = false;
    };
    profiles."work" = {
      id = 1;
      isDefault = true;
    };
  };
}
