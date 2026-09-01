(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:20:26 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/02 00:58:59 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*
let ft_print_comma = fun () ->
   print_char ',';
   print_char ' '

let ft_print_comb = fun () ->
    let rec loop_hundreds hundreds =
        if hundreds <= 9 then
            begin
                let rec loop_tens tens = 
                    if tens <= 9 then
                        begin
                            let rec loop_units units =
                                if units <= 9 then
                                    begin
                                        print_int hundreds;
                                        print_int tens;
                                        print_int units;
                                        if hundreds = 7 && tens = 8 && units = 9 then
                                            ()
                                        else
                                            ft_print_comma ();
                                        loop_units (units + 1)
                                    end
                            in loop_units (tens + 1);
                            loop_tens (tens + 1)
                        end
                in loop_tens (hundreds + 1);
                loop_hundreds (hundreds + 1)
            end
    in loop_hundreds (0);
    print_char '\n'
*)

let ft_print_comb = fun  () ->
    let rec loop hundreds tens units =
        print_int hundreds;
        print_int tens;
        print_int units;
        if hundreds <> 7 then
            begin
                print_string ", ";
                if units <> 9 then
                    loop hundreds tens (units + 1)
                else if tens <> 8 then
                    loop hundreds (tens + 1) (tens + 2)
                else
                    loop (hundreds + 1) (hundreds + 2) (hundreds + 3)
            end
        else
            print_string "\n"
    in loop 0 1 2
