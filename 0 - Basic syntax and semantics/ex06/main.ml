(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:21:21 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/06/27 03:21:24 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

(******************************************************************************)
(*                       Predicate functions definition                       *)
(******************************************************************************)

let ft_is_upper (c : char) =
    if (c >= 'A' && c <= 'Z') then
        true
    else
        false

let ft_is_lower (c : char) =
    if (c >= 'a' && c <= 'z') then
        true
    else
        false

let ft_is_alpha (c : char) =
    if (ft_is_upper c || ft_is_lower c) then
        true
    else
        false

let ft_is_digit (c : char) =
    if (c >= '0' && c <= '9') then
        true
    else
        false

let ft_is_alnum (c : char) =
    if (ft_is_alpha c || ft_is_digit c) then
        true
    else
        false

let ft_is_xdigit (c : char) =
    if (ft_is_digit c || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F')) then
        true
    else
        false

(******************************************************************************)
(*                                    TEST                                    *)
(******************************************************************************)

(*****************)
(* Test function *)
(*****************)

let ft_test_string_all (predicate : (char -> bool)) (str : string) =
    print_string "  Testing \"";
    print_string str;
    print_string "\": ";
    if Ft_string_all.ft_string_all predicate str = true then
        print_endline "True"
    else
        print_endline "False"


let predicates =
[
    ("ft_is_upper", ft_is_upper);
    ("ft_is_lower", ft_is_lower);
    ("ft_is_alpha", ft_is_alpha);
    ("ft_is_digit", ft_is_digit);
    ("ft_is_alnum", ft_is_alnum);
    ("ft_is_xdigit", ft_is_xdigit)
]
let strings = ["Coucou"; "coucou"; "COUCOU"; "C"; "c"; "Coucou42"; "coucou42"; "COUCOU42"; "42"; "8"; "1337BEEF"; ""]

let () =
    List.iter
        (fun (name, f) ->
            print_string "Testing ft_string_all with ";
            print_endline name;
            List.iter (ft_test_string_all f) strings;
            print_char '\n')
        predicates
