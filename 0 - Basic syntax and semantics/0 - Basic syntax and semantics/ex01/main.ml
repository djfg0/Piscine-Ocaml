(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:19:22 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 00:26:25 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let run_test (nbr : int) =
		print_string "Countdown for ";
		print_int nbr;
		print_newline ();
		Ft_countdown.ft_countdown nbr;
		print_newline ()
	in
		run_test 3;
		run_test 0;
		run_test (-1)
