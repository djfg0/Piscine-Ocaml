(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sequence.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/07 21:01:31 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/07 21:01:32 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let sequence (n : int) : string =
    let build_next_element (element : string) = 
        let element_length = String.length element in
        let rec build_loop (build_index : int) (repeat_counter : int) (output : string) =
            if build_index = element_length then
                output
            else if (build_index + 1) < element_length && String.get element build_index = String.get element (build_index + 1) then
                build_loop (build_index + 1) (repeat_counter + 1) output
            else
                build_loop (build_index + 1) 1 (output ^ (string_of_int repeat_counter) ^ (String.make 1 (String.get element build_index)))
        in build_loop 0 1 String.empty
    in
    let rec sequence_loop (current_element : string) (element_index : int) =
        if n <= 0 then
            String.empty
        else if element_index = (n - 1) then
            current_element
        else
            sequence_loop (build_next_element current_element) (element_index + 1)
    in sequence_loop "1" 0
