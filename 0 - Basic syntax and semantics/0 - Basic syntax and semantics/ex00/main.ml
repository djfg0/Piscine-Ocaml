(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:17:47 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 00:21:18 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let run_test (nbr : int) =
		print_string "Test with [";
		print_int nbr;
		print_string "]: ";
		Ft_test_sign.ft_test_sign nbr
	in
		run_test 42;
		run_test 0;
		run_test (-42);
