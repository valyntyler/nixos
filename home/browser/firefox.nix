{
  # browser
  programs.firefox = {
    enable = true;
    profiles."self" = {
      id = 0;
      isDefault = false;
      search.default = "DuckDuckGo";
      search.force = true;
    };
    profiles."work" = {
      id = 1;
      isDefault = true;
      search.default = "DuckDuckGo";
      search.force = true;
    };
  };
}
