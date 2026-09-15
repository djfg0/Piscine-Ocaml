(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:20:26 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 01:05:54 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb () : unit =
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
