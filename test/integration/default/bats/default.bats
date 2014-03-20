@test "cpanm is found in PATH" {
  run yum -y install which
  run which cpanm
  [ "$status" -eq 0 ]
}

