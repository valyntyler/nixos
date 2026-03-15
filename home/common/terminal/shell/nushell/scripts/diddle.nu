def diddle [path: string] {
  if (not ($path | path exists)) {
    mkdir ($path | path dirname)
  }
  touch $path
}
