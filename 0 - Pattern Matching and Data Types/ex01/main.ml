(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/06 23:35:20 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/06 23:35:21 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec print_list (l : 'a list) f =
    match l with
    | [] -> print_char '\n'
    | first :: rest ->
            begin
                f first;
                print_char ' ';
                print_list rest f
            end

let () =
    print_list (Crossover.crossover ['a'; 'b'; 'c'] ['b'; 'c']) print_char;
    print_list (Crossover.crossover ['a'; 'b'; 'c'] ['b'; 'b'; 'c']) print_char;
    print_list (Crossover.crossover ['a'; 'b'; 'c'; 'b'] ['b'; 'b'; 'c']) print_char;
    print_list (Crossover.crossover [21; 42; 8] [42; 8]) print_int;
    print_list (Crossover.crossover ["salut"; "coucou"; "là"] ["coucou"; "là"]) print_string;
    print_list (Crossover.crossover [] ['b'; 'c']) print_char;
    print_list (Crossover.crossover ['b'; 'c'] []) print_char;
    print_list (Crossover.crossover [] []) print_char;

