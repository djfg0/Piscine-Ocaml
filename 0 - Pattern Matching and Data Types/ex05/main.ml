(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/09 00:08:54 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/09 00:08:55 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test (n : int) =
        let helix = Helix.generate_helix n in
            print_string "Test with helix of size: ";
            print_int n;
            print_newline ();
            print_string "       Random helix: ";
            print_endline (Helix.helix_to_string helix);
            print_string "Complementary helix: ";
            print_endline (Helix.helix_to_string (Helix.complementary_helix helix))
        in
            run_test 1;
            run_test 2;
            run_test 3;
            run_test 4;
            run_test 15;
            run_test 0;
            run_test (-1);
