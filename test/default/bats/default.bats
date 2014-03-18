@test "cpanm is found in PATH" {
  run which cpanm
  [ "$status" -eq 0 ]
}

