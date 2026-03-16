def diddle [path: string] {
  let path = $path | path expand
  if (not ($path | path exists)) {
    mkdir ($path | path dirname)
  }
  touch $path
}
