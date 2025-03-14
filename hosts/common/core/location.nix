{
  # enable location service
  location.provider = "geoclue2";

  # provide location
  services.geoclue2 = {
    enable = true;
    geoProviderUrl = "https://reallyfreegeoip.org/json/";
    submissionUrl = "https://beacondb.net/v2/geosubmit";
    submissionNick = "geoclue";

    appConfig.firefox = {
      isAllowed = true;
      isSystem = false;
    };

    appConfig.gammastep = {
      isAllowed = true;
      isSystem = false;
    };
  };
}
