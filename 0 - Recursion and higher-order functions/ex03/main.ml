(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/03 02:39:24 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/03 02:39:26 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test x y z =
        print_string "tak ";
        print_int x;
        print_char ' ';
        print_int y;
        print_char ' ';
        print_int z;
        print_string ": ";
        print_int (Tak.tak x y z);
        print_char '\n'
    in
    run_test 1 2 3;
    run_test 5 23 7;
    run_test 9 1 0;
    run_test 1 1 1;
    run_test 0 42 0;
    run_test 23498 98734 98776
