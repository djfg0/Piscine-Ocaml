(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   sequence.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/07 21:01:31 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/15 21:01:39 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let sequence (n : int) : string =
	let rec itoa (nbr : int list) (output : string): string =
		match nbr with
		| [] -> output
		| first :: rest -> itoa rest (output ^ (string_of_int first))
	in
	if n <= 0 then
		""
	else
		begin
			let rec build_sequence (prev_element : int list) (current_element : int list) : int list =
				let rec build_element (index : int) (counter : int) (prev : int list) (curr : int list) =
					match prev with
					| [] -> curr
					| first :: second :: rest -> if first = second then
													build_element (index + 1) (counter + 1) (second::rest) curr
												 else
													build_element (index + 1) 1 (second::rest) (curr @ [counter; first])
					| first :: [] -> build_element (index + 1) 1 [] (curr @ [counter; first])
				in build_element 1 1 prev_element current_element
			in
			let rec out element_index prev_element current_element =
				match element_index with
				| x when element_index = n -> current_element
				| _ -> let next = build_sequence current_element []
					   in out (element_index + 1) current_element next
			in itoa (out 1 [1] [1]) ""
		end
