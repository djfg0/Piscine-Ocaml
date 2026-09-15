(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:20:58 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 00:47:19 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let run_test (str : string) =
		print_string "ft_print_rev of \"";
		print_string str;
		print_endline "\"";
		Ft_print_rev.ft_print_rev str
	in
		run_test "Hello, World!";
		run_test "24";
		run_test ""
