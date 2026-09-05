(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:31:37 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:31:39 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test (delta : float) =
        print_string "Iterations for delta of ";
        print_float delta;
        print_string ": ";
        print_int (Leibniz_pi.leibniz_pi delta);
        print_char '\n'
    in
        run_test 0.1;
        run_test 4.;
        run_test 3.;
        run_test 1.;
        run_test 0.5;
        run_test 0.25;
        run_test 0.05;
        run_test 0.01;
        run_test 0.001


(*                                                              *)
(*  Removed output to avoid messing up calculation's output.    *)
(*                                                              *)

(*
    let run_test (delta : float) =
        begin
            ignore (Leibniz_pi.leibniz_pi delta);
            print_char '\n'
        end
    in
        run_test 0.1;
        run_test 4.;
        run_test 3.;
        run_test 1.;
        run_test 0.5;
        run_test 0.25;
        run_test 0.05;
        run_test 0.01;
        run_test 0.001
*)
