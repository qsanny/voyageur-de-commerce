(* Creation de la classe ville *)
type 'a city = { 
    x: int;
    y: int;
    name: int;
} ;;

let print c = Printf.printf "%d: (%d, %d) \n" c.name c.x c.y;;

(* calcul de distance entre deux villes *)
let distance c1 c2 = 
  let x_distance = float_of_int (abs(c1.x - c2.x)) in
  let y_distance = float_of_int (abs(c1.y - c2.y)) in
  
  sqrt ((x_distance ** 2.) +.  (y_distance ** 2.))
