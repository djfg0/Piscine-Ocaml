(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:22:02 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 01:16:59 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let run_test (n : int) (str : string) =
    print_string "Testing ft_rot_n with ";
    print_int n;
    print_string " and \"";
    print_string str;
    print_string "\": \"";
    print_string (Ft_rot_n.ft_rot_n n str);
    print_endline "\""
in
    run_test 1 "abcdefghijklmnopqrstuvwxyz";
    run_test 13 "abcdefghijklmnopqrstuvwxyz";
    run_test 26 "abcdefghijklmnopqrstuvwxyz";
    run_test 27 "abcdefghijklmnopqrstuvwxyz";
    run_test 42 "0123456789";
    run_test 2 "OI2EAS67B9";
    run_test 0 "Damned !";
    run_test 42 "";
    run_test 1 "NBzlk qnbjr !";
    run_test 1 "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    run_test (-13) "NOPQRSTUVWXYZABCDEFGHIJKLM";
    run_test (-13) "nopqrstuvwxyzabcdefghijklm";
    run_test (-26) "nopqrstuvwxyzabcdefghijklm";
    run_test (-27) "nopqrstuvwxyzabcdefghijklm";
    run_test (-1) "bcdefghijklmnopqrstuvwxyza";
    run_test (-42) "0123456789";
    run_test (-2) "QK2GCU67D9";
    run_test (-0) "Damned !";
    run_test (-42) "";
    run_test (-1) "OCaml rocks !"
