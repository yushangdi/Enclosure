
(* the mode represents the mode of the game.*)
type mode


(* [main ()] starts the REPL, which prompts for a game to play.
 * You are welcome to improve the user interface, but it must
 * still prompt for a game to play rather than hardcode a game file. *)
val main: unit -> unit


(* start game with a certain mode *)
val play_game: mode -> unit
