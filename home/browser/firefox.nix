{
  # browser
  programs.firefox = {
    enable = true;
    profiles."self" = {
      id = 0;
      isDefault = false;
      search.default = "DuckDuckGo";
    };
    profiles."work" = {
      id = 1;
      isDefault = true;
      search.default = "DuckDuckGo";
    };
  };
}
