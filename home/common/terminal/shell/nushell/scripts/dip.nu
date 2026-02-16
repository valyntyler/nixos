def dip [] {
  ip route | grep '^default' | awk '{print $9}'
}
