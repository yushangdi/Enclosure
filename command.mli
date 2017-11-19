open Sdlevent
open Sdlkey

(* the direction that a player goes to next *)
type direction = Up| Down| Left | Right

(* in [(c1,c2)], c1 is the command of player1, c2 is the commnad of player2 *)
type command = direction * direction

(* [parse e] is the command that represents player input [e].
 * requires: [str] is a keyboard input. *)
val parse_command : event -> command
