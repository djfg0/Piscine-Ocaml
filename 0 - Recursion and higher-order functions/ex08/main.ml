(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:31:18 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:31:19 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test (func_name : string) (func : int -> float) (lower : int) (upper : int) =
        print_string func_name;
        print_char ' ';
        print_int lower;
        print_char ' ';
        print_int upper;
        print_string ": ";
        print_float (Ft_sum.ft_sum func lower upper);
        print_char '\n'
    in
        run_test "fun x -> x * x" (fun x -> float_of_int (x * x)) 1 10;
        run_test "fun x -> x * x" (fun x -> float_of_int (x * x)) 1 2;
        run_test "fun x -> x" (fun x -> float_of_int x) 1 5;
        run_test "fun x -> x" (fun x -> float_of_int x) (-1) (-5);
        run_test "fun x -> x" (fun x -> float_of_int x) (-5) (-1);
        run_test "fun x -> 2 * x" (fun x -> float_of_int (2 * x)) 1 5;
