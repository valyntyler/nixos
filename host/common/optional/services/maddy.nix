{pkgs, ...}: {
  services.maddy = {
    enable = true;
    primaryDomain = "localhost";
    ensureAccounts = [
      "user1@example.org"
      "postmaster@example.org"
    ];
    ensureCredentials = {
      # Do not use this in production. This will make passwords world-readable
      # in the Nix store
      "user1@example.org".passwordFile = "${pkgs.writeText "postmaster" "test"}";
      "postmaster@example.org".passwordFile = "${pkgs.writeText "postmaster" "test"}";
    };
  };
}
