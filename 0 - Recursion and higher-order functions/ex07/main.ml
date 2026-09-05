(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:31:00 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:31:04 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test (func : 'a -> 'a) (x : 'a) (n : int) =
        print_endline
        begin
            if Converges.converges func x n = true then
                "true"
            else
                "false"
        end
    in
        run_test (( * ) 2) 2 5;
        run_test (fun x -> x / 2) 2 3;
        run_test (fun x -> x / 2) 2 2;
        run_test (fun x -> x * x) 1 2;
        run_test (fun x -> 1 / x) 1 2;
        run_test (fun x -> x / (x + 1)) 1 2;
        run_test (fun x -> x / 2) 0 2;
        run_test (fun x -> 2 * x) (-1) 2;
        run_test (fun x -> 2 * x) 1 (-1);
        run_test (fun x -> 2 * x) (-1) (-1);
