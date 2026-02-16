def --env mkproj [path: string] {
  mkdir $path
  cd $path
  git init
}
