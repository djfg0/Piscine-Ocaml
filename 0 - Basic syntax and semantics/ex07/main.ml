(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:21:41 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/06/27 03:21:42 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(*****************)
(* Test function *)
(*****************)

let ft_test_is_palindrome (str : string) =
    print_string "Testing ft_is_palindrome with \"";
    print_string str;
    print_string "\": ";
    print_endline
    begin
        if Ft_is_palindrome.ft_is_palindrome str then
            "True"
        else
            "False"
    end

(*********)
(* TESTS *)
(*********)

let () =
    let strings = ["radar"; "Radar"; "R"; "rr"; "rar"; "424"; "madam"; "car"; "42"; ""] in 
    List.iter ft_test_is_palindrome strings
