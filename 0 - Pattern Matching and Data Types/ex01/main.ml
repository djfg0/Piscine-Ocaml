(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/06 23:35:20 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/14 21:54:07 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec print_list (l : 'a list) f =
	match l with
	| [] -> print_newline ()
	| first :: rest ->
			begin
				f first;
				print_string " ";
				print_list rest f
			end

let run_test (l1 : 'a list) (l2 : 'a list) (f : 'a -> unit) =
	print_string "List 1: ";
	print_list l1 f;
	print_string "List 2: ";
	print_list l2 f;
	print_string "-> Commons: ";
	print_list (Crossover.crossover l1 l2) f

let () =
	run_test ['a'; 'b'; 'c'] ['b'; 'c'] print_char;
	run_test ['a'; 'b'; 'c'] ['b'; 'b'; 'c'] print_char;
	run_test ['a'; 'b'; 'c'; 'b'] ['b'; 'b'; 'c'] print_char;
	run_test [21; 42; 8] [42; 8] print_int;
	run_test ["salut"; "coucou"; "là"] ["coucou"; "là"] print_string;
	run_test [] ['b'; 'c'] print_char;
	run_test ['b'; 'c'] [] print_char;
	run_test [] [] print_char
