open OUnit2
open State

let init_tests = []


let suite =
  "test suite"
  >::: List.flatten [
    init_tests;
  ]


let _ = run_test_tt_main suite
