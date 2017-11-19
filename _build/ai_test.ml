open OUnit2
open Ai

let ai_tests = []


let suite =
  "test suite"
  >::: List.flatten [
    ai_tests;
  ]


let _ = run_test_tt_main suite
