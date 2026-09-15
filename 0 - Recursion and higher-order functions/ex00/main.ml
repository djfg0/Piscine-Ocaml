(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:27:51 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 14:10:07 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let run_test (n : int) =
		print_string "Repeat x ";
		print_int n;
		print_string " times: ";
		print_endline (Repeat_x.repeat_x n)
	in
		run_test (-1);
		run_test (0);
		run_test (1);
		run_test (2);
		run_test (3);
		run_test (4);
		run_test (5);
