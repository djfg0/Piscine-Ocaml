(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:19:50 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 00:35:50 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let run_test (nbr : int) (power : int) =
		print_string "Power of ";
		print_int nbr;
		print_string " ^ ";
		print_int power;
		print_string " = ";
		print_int (Ft_power.ft_power nbr power);
		print_newline ()
	in
		run_test 2 4;
		run_test 3 0;
		run_test 0 5;
