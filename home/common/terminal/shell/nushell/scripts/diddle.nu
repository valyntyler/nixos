def diddle [path: string] {
  if (not ($path | path exists)) {
    mkdir ($path | path expand | path dirname)
  }
  touch $path
}
