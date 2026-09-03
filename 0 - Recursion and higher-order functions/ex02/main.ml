(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/03 02:39:14 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/03 02:39:15 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test m n =
        print_string "ackermann ";
        print_int m;
        print_char ' ';
        print_int n;
        print_string ": ";
        print_int (Ackermann.ackermann m n);
        print_char '\n'
    in
    run_test (-1) 7;
    run_test (-1) (-1);
    run_test 1 (-1);
    run_test 0 0;
    run_test 2 3;
    run_test 4 1
