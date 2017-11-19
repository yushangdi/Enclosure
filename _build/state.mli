(* the time limit of the game *)
type maxtime

(* teh frequency of image update *)
type frequency

(* the color of the blocks *)
type color = Cplayer1 of int * int * int
           | CPlayer2 of int * int * int
           | CPath1 of int * int * int
           | CPath2 of int * int * int
           | CArea1 of int * int * int
           | CArea2 of int * int * int
           | CBkg of int * int * int

(* the type of player. If the player is human or computer *)
type playertype = Human| AI

(* a player in the game.*)
type player


(* the side length of each block *)
val block_side: int

(* the size of the whole game screen *)
val board_size: int * int

(* player1 is the block that represents Player1
   Path1 represents the unclosed path taken by player1
   Area1 is the current area belongs to player1
   Player2 is the block that represents Player2
   Path2 represents the unclosed path taken by player2
   Area2 is the current area belongs to player2
   Wall is the block
   Bkg is all the other blocks, i.e. background
  *)
type blocktype

(* block represents a block in the game screen *)
type block

(* maptype represents all the blocks in the screen *)
type maptype


(* score1 is the score of the first player
   score2 is the score of the second player
   map is the map that represents the whole screen
    location1 is the coordinates of the first player
   location2 is the coordinates of the second player
   flag is wether or not we should update the screen
    timer is the time left until game end *)
type state = {score1:int;
              score2:int;
              map: maptype;
              location1:int*int;
              location2:int*int;
              flag:bool;
              cmd: Command.command;
              timer: float}

(* whenever a “circling” action is completed. Maintain as part of the state *)
val count: block list list -> int*int

(* draw the map onto the screen *)
val drawmap: maptype -> unit

(* whether or not path is finished *)
val isenclosed: maptype -> bool

(* path intesected *)
val iscut: maptype -> bool

(* gameover *)
val timeout: state -> unit

(* whether one of the players hit the wall *)
val hitwall: maptype -> bool

(* draw the legend onto the screen *)
val draw_legend: state -> unit

(* change the state based on the command *)
val update_state: state -> Command.command-> state
