(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_is_palindrome.ml                                :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:21:31 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/06/27 03:21:32 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_is_palindrome (str : string) =
    let strlen = String.length str in
    let rec loop index =
        if index < (strlen - 1 - index) then
            if String.get str index = String.get str (strlen - 1 - index) then
                loop (index + 1)
            else
                false
        else
            true
    in loop 0
