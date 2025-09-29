{user, ...}: {
  users.extraGroups.docker.members = [user];
  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };
}
