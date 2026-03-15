def crack [path: string] {
  let fake = $path | path expand --no-symlink
  let real = $path | path expand
  print ($real + " -> " + $fake)
  rm $fake
  cp $real $fake
  chmod +w $fake
}
