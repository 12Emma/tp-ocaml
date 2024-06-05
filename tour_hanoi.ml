let hanoi n =
  let rec hanoi_aux src aux dest n =
    if n = 1 then  
      Printf.printf "Déplacer un disque de %s à %s\n" src dest
    else begin  
      hanoi_aux src dest aux (n - 1);
      Printf.printf "Déplacer un disque de %s à %s\n" src dest;
      hanoi_aux aux src dest (n - 1)
    end
  in
  let debut = Sys.time () in 
  hanoi_aux "A" "B" "C" n; 
  let fin = Sys.time () in
  Printf.printf "Temps d'exécution pour n=%d : %f secondes\n" n (fin -. debut) 

let rec temps_ecouler n =
  let debut = Sys.time () in 
  hanoi n;  
  let fin = Sys.time () in  
  if (fin -. debut) > 10.0 then 
    n 
  else
    temps_ecouler (n + 1) 

let () =
  let seuil = temps_ecouler 1 in 
  Printf.printf "À partir de n=%d, on dépasse 10 secondes\n" seuil 

  let () =
  let n = 3 in 
  Printf.printf "Appuyez sur Entrée pour commencer...\n";
  ignore (read_line ());
  stop := false;
  test_hanoi n
