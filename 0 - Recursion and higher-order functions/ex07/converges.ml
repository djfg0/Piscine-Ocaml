(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   converges.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:30:50 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:30:51 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec converges (func : 'a -> 'a) (x : 'a) (n : int) : bool =
    if n < 0 then
        false
    else if func x = x then
        true
    else
        converges func (func x) (n - 1)
