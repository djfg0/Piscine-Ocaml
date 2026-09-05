(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:30:44 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:30:45 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    print_string "Iter (fun x -> x * x) 2 -1: ";
    print_int (Iter.iter (fun x -> x * x) 2 (-1));
    print_char '\n';
    print_string "Iter (fun x -> x * 2) 2 0: ";
    print_int (Iter.iter (fun x -> x * 2) 2 0);
    print_char '\n';
    print_string "Iter (fun x -> x * 2) 2 1: ";
    print_int (Iter.iter (fun x -> x * 2) 2 1);
    print_char '\n';
    print_string "Iter (fun x -> x * x) 2 4: ";
    print_int (Iter.iter (fun x -> x * x) 2 4);
    print_char '\n';
    print_string "Iter (fun x -> x * 2) 2 4: ";
    print_int (Iter.iter (fun x -> x * 2) 2 4);
    print_char '\n'
