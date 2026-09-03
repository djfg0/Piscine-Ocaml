(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/03 02:40:14 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/03 02:40:15 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test n =
        print_string "Fibonacci ";
        print_int n;
        print_string ": ";
        print_int (Fibonacci.fibonacci n);
        print_char '\n'
    in
        run_test (-42);
        run_test (-1);
        run_test 0;
        run_test 1;
        run_test 2;
        run_test 3;
        run_test 4;
        run_test 5;
        run_test 6;
        run_test 7;
        run_test 8;
        run_test 9;
        run_test 10;
        run_test 11;
        run_test 12;
        run_test 13;
        run_test 14;
        run_test 15
