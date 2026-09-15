(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/06 23:35:00 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/15 21:03:24 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec print_encoded (l : (int * 'a) list) f =
	match l with
	| [] -> print_newline ()
	| (n, c) :: y ->
					begin
							print_int n;
							f c;
							print_encoded y f
					end

let rec print_list (l : 'a list) (f : 'a -> unit) =
	match l with
	| [] -> print_newline ()
	| first :: rest ->
						begin
							f first;
							print_string " ";
							print_list rest f
						end

let run_test (l : 'a list) (f : 'a -> unit) =
	print_string "Input: ";
	print_list l f;
	print_string "-> Encoded: ";
	print_encoded (Encode.encode l) f

let () =
		run_test ['a'; 'a'; 'a'; 'b'; 'b'; 'a'; 'a'] print_char;
		run_test ['a'; 'a'] print_char;
		run_test ['a'] print_char;
		run_test ['a'; 'a'; 'b'] print_char;
		run_test ['a'; 'b'; 'b'] print_char;
		run_test ['c'; 'a'; 'b'; 'b'; 'c'] print_char;
		run_test [] print_char;
		run_test ["salut"; "coucou"] print_string;
		run_test ["salut"; "salut"; "coucou"; "coucou"] print_string;
		run_test ["déjà"; "coucou"] print_string;
		run_test ['3'; '4'; '5'; '5'; '3'] print_char;
		run_test [3; 4; 5; 5; 3] print_int;
		run_test [3.1; 4.2; 5.3; 5.3; 3.1] print_float;
