(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:28:22 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 19:22:51 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let run_test ?str (nbr : int) =
		print_endline (Repeat_string.repeat_string ?str nbr)
	in
		run_test (-1);
		run_test ~str:"Blabla" (-1);
		run_test 0;
		run_test ~str:"Blabla" 0;
		run_test ~str:"Toto" 1;
		run_test ~str:"Toto" 2;
		run_test 1;
		run_test 2;
		run_test 3;
		run_test 4;
		run_test 5
