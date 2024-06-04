let rec f_somme n =
if n = 0 then 0
else 
n + f (n-1);;


let rec f n =
      if n = 0 then
        0
      else
       ( n-1)*(n-1) + f(n - 1);;
