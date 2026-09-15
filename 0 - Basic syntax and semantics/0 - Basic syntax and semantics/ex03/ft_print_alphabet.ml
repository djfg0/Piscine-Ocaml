(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_alphabet.ml                               :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:19:57 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 01:04:11 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_alphabet () : unit =
    let int_of_char_a = int_of_char 'a' in
    let int_of_char_z = int_of_char 'z' in
    let rec loop current_int_of_char =
        print_char (char_of_int current_int_of_char);
        if current_int_of_char = int_of_char_z then
            print_char '\n'
        else
            loop (current_int_of_char + 1)
    in
    loop (int_of_char_a)
