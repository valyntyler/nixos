{
  systemd.sleep.extraConfig = ''
    HibernateDelaySec=30s
    SuspendState=mem
  '';
}
