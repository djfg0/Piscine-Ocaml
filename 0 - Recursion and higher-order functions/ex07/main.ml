(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:31:00 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/14 13:09:26 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let run_test (f_def : string) (func : 'a -> 'a) (x : 'a) (n : int) =
		print_string "Converges ";
		print_string f_def;
		print_string " ";
		print_int x;
		print_string " ";
		print_int n;
		print_string ": ";
		print_endline (string_of_bool (Converges.converges func x n))
	in
		run_test "(( * ) 2)" (( * ) 2) 2 5;
		run_test "(fun x -> x / 2)" (fun x -> x / 2) 2 3;
		run_test "(fun x -> x / 2)" (fun x -> x / 2) 2 2;
		run_test "(fun x -> x * x)" (fun x -> x * x) 1 2;
		run_test "(fun x -> 1 / x)" (fun x -> 1 / x) 1 2;
		run_test "(fun x -> x / (x + 1))" (fun x -> x / (x + 1)) 1 2;
		run_test "(fun x -> x / 2)" (fun x -> x / 2) 0 2;
		run_test "(fun x -> 2 * x)" (fun x -> 2 * x) (-1) 2;
		run_test "(fun x -> 2 * x)" (fun x -> 2 * x) 1 (-1);
		run_test "(fun x -> 2 * x)" (fun x -> 2 * x) (-1) (-1)
