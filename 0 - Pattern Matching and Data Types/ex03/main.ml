(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/07 21:01:21 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/07 21:01:22 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test (n : int) =
        print_string "element ";
        print_int n;
        print_string " of sequence: ";
        print_string (Sequence.sequence n);
        print_char '\n'
    in
    run_test 1;
    run_test 2;
    run_test 3;
    run_test 4;
    run_test 5;
    run_test 6;
    run_test 7;
    run_test 8;
    run_test 0;
    run_test (-1)
