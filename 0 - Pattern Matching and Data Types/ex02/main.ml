(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/07 18:15:48 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/07 18:15:49 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test bits =
        print_string "Gray sequence of ";
        print_int bits;
        print_string ": ";
        Gray.gray bits;
    in
        run_test 4;
        run_test 3;
        run_test 2;
        run_test 1;
        run_test 0;
        run_test (-1)
