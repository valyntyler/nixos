{
  # email client
  programs.thunderbird = {
    enable = true;
    profiles."self" = {
      isDefault = false;
      search.default = "DuckDuckGo";
      search.force = true;
    };
    profiles."work" = {
      isDefault = true;
      search.default = "DuckDuckGo";
      search.force = true;
    };
  };
}
