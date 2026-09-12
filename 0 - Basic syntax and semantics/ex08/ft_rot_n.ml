(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_rot_n.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:21:49 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 01:14:28 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

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

let rec rot (n : int)(c : char) =
    let int_of_a = int_of_char 'a' in
    let int_of_z = int_of_char 'z' in
    let int_of_A = int_of_char 'A' in
    let int_of_Z = int_of_char 'Z' in
    let int_of_param = int_of_char c in
    if n = 0 then
        c
    else if n < 0 then
        rot (26 + n) c
    else if ft_is_lower c then
        let new_int_of_param = (int_of_param + n) in
        if new_int_of_param > int_of_z then
            char_of_int (int_of_a + (new_int_of_param - int_of_z - 1))
        else
            char_of_int new_int_of_param
    else if ft_is_upper c then
        let new_int_of_param = (int_of_param + n) in
        if new_int_of_param > int_of_Z then
            char_of_int (int_of_A + (new_int_of_param - int_of_Z - 1))
        else
            char_of_int new_int_of_param
    else
        c

let ft_rot_n (n: int) (str : string) : string =
    String.map (rot n) str 
