(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   leibniz_pi.ml                                      :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:31:25 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:31:25 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let leibniz_pi (delta : float) : int =
    let abs (n : float) : float =
        if n < 0. then
            -.n
        else
            n
    in
    let pi_ref = 4. *. (atan 1.) in
    let rec leibniz_iter (i : int) (lower : int) (pi_calc : float) : int =
        if delta < 0. then
            -1
        else if abs (pi_ref -. pi_calc) < delta then
                i
        else
                leibniz_iter (i + 1) (lower + 1) (pi_calc +. (4. *. ((-1. ** float_of_int lower) /. ((2. *. float_of_int lower) +. 1.))))

    in leibniz_iter 0 0 0.


(*                                                                      *) 
(*  Added output to actually see the calculation and the distance to pi *)
(*                                                                      *) 

(*
let leibniz_pi (delta : float) : int =
    let abs (n : float) : float =
        if n < 0. then
            -.n
        else
            n
    in
    let pi_ref = 4. *. (atan 1.) in
    let rec leibniz_iter (i : int) (lower : int) (pi_calc : float) : int =
        if delta < 0. then
            -1
        else if abs (pi_ref -. pi_calc) < delta then
            begin
                print_string "Iteration : ";
                print_int i;
                print_char '\t';
                print_string "Distance from pi: ";
                print_float (abs_float (pi_ref -. pi_calc));
                print_char '\n';
                i
            end
        else
            begin
                print_string "Iteration : ";
                print_int i;
                print_char '\t';
                print_string "Distance from pi: ";
                print_float (abs_float (pi_ref -. pi_calc));
                print_char '\n';
                leibniz_iter (i + 1) (lower + 1) (pi_calc +. (4. *. ((-1. ** float_of_int lower) /. ((2. *. float_of_int lower) +. 1.))))
            end

    in leibniz_iter 0 0 0.
*)
