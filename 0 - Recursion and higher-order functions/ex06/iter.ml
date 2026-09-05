(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   iter.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:30:31 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:30:32 by fguarrac         ###   ########.fr       *)
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
        iter func (func x) (n - 1)
