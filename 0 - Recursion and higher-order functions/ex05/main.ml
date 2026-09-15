(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:30:17 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/14 12:45:59 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let run_test (func : string) (f : int -> int) (nbr : int) =
		print_string func;
		print_string " ";
		print_int nbr;
		print_string ": ";
		print_int (f nbr);
		print_newline ();
	in
		run_test "hfs_m" Hofstadter_mf.hfs_m (-1);
		run_test "hfs_f" Hofstadter_mf.hfs_f (-1);
		run_test "hfs_m" Hofstadter_mf.hfs_m 0;
		run_test "hfs_f" Hofstadter_mf.hfs_f 0;
		run_test "hfs_m" Hofstadter_mf.hfs_m 4;
		run_test "hfs_f" Hofstadter_mf.hfs_f 4;
