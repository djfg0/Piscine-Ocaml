(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   iter.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/03 02:40:44 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/03 02:40:45 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec iter (func : int -> int) (x : int) (n : int) =
    if n < 0 then
        -1
    else if n = 0 then
        x
    else if n = 1 then
        func x
    else
        func (iter func x (n - 1))
