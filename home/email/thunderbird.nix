{
  # email client
  programs.thunderbird = {
    enable = true;
    profiles."self" = {
      isDefault = false;
      search.default = "DuckDuckGo";
    };
    profiles."work" = {
      isDefault = true;
      search.default = "DuckDuckGo";
    };
  };
}
