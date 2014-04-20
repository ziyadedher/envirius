#!/usr/bin/env bats

load test_helper

@test "ls-plugins: list enabled plugins" {
    run nv ls-plugins
    [ "$status" -eq 0 ]
    assert_success
    assert_equal "elixir"           "${lines[0]}"
    assert_equal "elixir-prebuilt"  "${lines[1]}"
    assert_equal "erlang"           "${lines[2]}"
    assert_equal "go-prebuilt"      "${lines[3]}"
    assert_equal "haskell"          "${lines[4]}"
    assert_equal "julia"            "${lines[5]}"
    assert_equal "node"             "${lines[6]}"
    assert_equal "node-prebuilt"    "${lines[7]}"
    assert_equal "python"           "${lines[8]}"
    assert_equal "rust"             "${lines[9]}"
    assert_equal "rust-prebuilt"    "${lines[10]}"
    assert_equal ""                 "${lines[11]}"
}
