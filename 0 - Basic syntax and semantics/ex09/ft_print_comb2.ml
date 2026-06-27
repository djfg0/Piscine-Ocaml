(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb2.ml                                  :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:22:09 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/06/27 03:22:10 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb2 () =
    let rec first_loop_tens first_tens =
        if first_tens <= 9 then
            begin
                let rec first_loop_units first_units =
                    if first_units <= 9 then
                        begin
                            let rec second_loop_tens second_tens =
                                if second_tens <= 9 then
                                    begin
                                        let rec second_loop_units second_units =
                                            if second_units <= 9 then
                                                begin
                                                    print_int first_tens;
                                                    print_int first_units;
                                                    print_char ' ';
                                                    print_int second_tens;
                                                    print_int second_units;
                                                    if (first_tens <> 9 || first_units <> 8 || second_tens <> 9 || second_units <> 9) then
                                                        print_string ", ";
                                                    second_loop_units (second_units + 1)
                                                end
                                        in second_loop_units (if first_tens = second_tens then (first_units + 1) else 0); (* If tens == first + 1 else 0*)
                                        second_loop_tens (second_tens + 1)
                                    end
                            in second_loop_tens first_tens;
                            first_loop_units (first_units + 1)
                        end
                in first_loop_units 0;
                first_loop_tens (first_tens + 1)
            end
    in first_loop_tens 0;
    print_char '\n'
