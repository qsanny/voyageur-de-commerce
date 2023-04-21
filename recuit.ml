#use "data.ml"


type 'a solution = { 
    cities: 'a array;
} ;;
(* Pour trouver la distance totale d'une solution *)
let solution_distance s = 
  let len_cities = Array.length s.cities in
  let total_distance = ref 0.0 in
  for i = 0 to ( len_cities - 1) do
      let from_city = s.cities.(i) in
      let to_city = s.cities.((i + 1) mod len_cities) in
      total_distance := !total_distance +. (distance from_city to_city)
  done;
  !total_distance;;

(* Refroidissement *)
let cool_temperature (temperature: float) (cooling_rate: float) : float =
  temperature *. cooling_rate

(* Trouver une solution alearoire *)
let find_solution s =
(* TODO *)
    
    let n = Array.length s.cities in
    let a = Array.copy s.cities in
    for i = n - 1 downto 1 do
      let k = Random.int (i+1) in
      let x = a.(k) in
      a.(k) <- a.(i);
      a.(i) <- x
    done;
    
    { cities =  Array.init n (function i -> a.(i))}

let find_solution_inv_slice s =
  let liste = s.cities in 
  let l = Array.copy liste in
  let len = Array.length liste in
  let i = Random.int len in
  let j = Random.int len in
  let min_i_j = min i j in
  let max_i_j = max i j in
  let reversed_sub_list = Array.sub l min_i_j (max_i_j - min_i_j + 1) |> Array.fold_left (fun acc x -> Array.append [|x|] acc) [||] in
  let r = Array.mapi (fun i x -> if i >= min_i_j && i <= max_i_j then reversed_sub_list.(i - min_i_j) else x) l in


  { cities =  Array.init len (function i -> r.(i))}

(* Définition de la fonction de probabilité pour accepter ou rejeter une nouvelle solution *)
let accept_probability (current_energy: float) (new_energy: float) (temperature: float) =
  if new_energy < current_energy then
      1.0
  else
      exp ( (-.(new_energy -. current_energy)) /. temperature)

(* Fonction de recuit simule *)
let recuit_simule cities initial_temperature cooling_rate stopping_temperature =

  let current_solution = cities in
  let current_temperature = initial_temperature in
  (* let output = "" in *)

  let filename = "out.txt" in
  let out_channel = open_out filename in (* ouvre le fichier en écriture *)
(*   output_string out_channel output ;   *)

  let rec recuit_simule_loop current_solution current_temperature = 
    let dist = (solution_distance current_solution) in
    Printf.printf "%f," dist;
    (* output = output ^ Printf.sprintf "%f," dist; *)

    if current_temperature <= stopping_temperature then
      current_solution
    else
    
(*       let new_solution = find_solution current_solution in *)
      let new_solution = find_solution_inv_slice current_solution in
      let acceptance_probability = accept_probability (solution_distance current_solution) (solution_distance new_solution) current_temperature in
(*       Printf.printf "proba -> %f\n" acceptance_probability; *)
      if acceptance_probability > Random.float 1.0 then
        recuit_simule_loop new_solution (cool_temperature current_temperature cooling_rate)
      else
        recuit_simule_loop current_solution (cool_temperature current_temperature cooling_rate)
  in
    (* écrit la ligne dans le fichier *)
  close_out out_channel ;         (* ferme le fichier *)

  recuit_simule_loop current_solution current_temperature

let cities_list =
    if Array.length Sys.argv > 1 then 
      if Sys.argv.(1) = "data1.ml" then
          cities_list1
      else
          cities_list2
    else 
      cities_list1;;
  
let s0 = { cities =  Array.init (List.length cities_list) (function i -> List.nth cities_list i)} ;;
(* Printf.printf "c1-c2 %f\n" (distance c c2);; *)
(* Printf.printf "s %f\n" (solution_distance s0);; *)


let t0 = 3000.0 in
let cooling_rate = 0.9 in
let tmin = 1.0 in

(* # Principale *)
let best = recuit_simule s0 t0 cooling_rate tmin in
Printf.printf "\nLe meilleur chemin trouvé: \n " ;
for i = 0 to Array.length best.cities - 1 do
  Printf.printf "%d -> " best.cities.(i).name 
done;

Printf.printf "%d (%f)\n\n " best.cities.(0).name (solution_distance best);;

