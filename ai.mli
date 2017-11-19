
(* Cut threshhold [cut_thd] is a number of blocks. If under this number,
  will_be_cut returns true *)
val cut_thd: int

(* Wall threshhold [wall_thd] is a number of blocks. If under this number,
   will_hit_wall returns true *)
val wall_thd: int

(* Returns the minimum step we need to close the path *)
val min_step: State.maptype -> Command.command

(* Returns true if our path are closes to being cutted  *)
val will_be_cut: State.maptype -> bool

(* Returns true if our path are closes to hitting the wall  *)
val will_hit_wall: State.maptype -> bool

(* Returns a command to help the ai player avoid being cutted *)
val finish_quick: State.maptype -> Command.command

(* Returns a command such that the ai player tries to cut the other player's path *)
val cut_the_other: State.maptype -> Command.command

(* Returns a command to help the ai player avoid hitting the wall *)
val avoid_the_wall: State.maptype -> Command.command

(* Returns a command for ai player when there is no special condition *)
val normal_step: State.maptype -> Command.command

(* [next_step map n] outputs a command for player [n] based on the
   current game situation. The information about the game is given by [map] *)
val next_step: State.maptype -> int -> Command.command
