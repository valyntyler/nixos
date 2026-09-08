#!/usr/bin/env nu

def livemd [file: string] {
  if ($file | path exists) and (($file | path parse | get extension) == "md") {
    watch $file | each {|event| pandoc $file -o $"($file | path parse | get stem).pdf" }
    return
  }
}
