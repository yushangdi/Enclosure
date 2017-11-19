type maxtime = float
type frequency = float


type color = Cplayer1 of int * int * int
           | CPlayer2 of int * int * int
           | CPath1 of int * int * int
           | CPath2 of int * int * int
           | CArea1 of int * int * int
           | CArea2 of int * int * int
           | CBkg of int * int * int

(* Human represents a real player, AI represents a computer *)
type playertype = Human| AI

(* name is the name of the player, ptype is the typ eo fhte player *)
type player = {name:string; ptype: playertype}




let block_side = 10
let board_size = 100,100
type blocktype = Player1 of bool |Player2 of bool|Path1|Path2|Area1|Area2|Bkg|Wall
type block = {coord:int*int; btype: blocktype ref}
type maptype = block list list


type state = {score1:int;
              score2:int;
              map: maptype;
              location1:int*int;
              location2:int*int;
              flag:bool;
              cmd: Command.command;
              timer: float}


let count = failwith "unim"

let drawmap = failwith "unim"


let isenclosed = failwith "unim"

let iscut = failwith "unim"

let timeout = failwith "unim"

let hitwall = failwith "unim"

let draw_legend = failwith "unim"

let update_state = failwith "unim"
