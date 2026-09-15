(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:30:44 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/14 12:57:51 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let run_test (f_def : string) (start : int) (rep : int) (f : int -> int) =
		print_string "Iter ";
		print_string f_def;
		print_string " ";
		print_int start;
		print_string " ";
		print_int rep;
		print_string ": ";
		print_int (Iter.iter f start rep);
		print_newline ();
	in
		run_test "(fun x -> x * x)" 2 (-1) (fun x -> x * x);
		run_test "(fun x -> x * 2)" 2 0 (fun x -> x * 2);
		run_test "(fun x -> x * 2)" 2 1 (fun x -> x * 2);
		run_test "(fun x -> x * x)" 2 4 (fun x -> x * x);
		run_test "(fun x -> x * 2)" 2 4 (fun x -> x * 2);
