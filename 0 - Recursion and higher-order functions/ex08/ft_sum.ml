(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_sum.ml                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:31:09 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:31:10 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_sum (func : int -> float) (lower : int) (upper : int) : float =
    let rec ft_sum_acc lower (acc : float) (last : bool) =
        if last = true then
            acc
        else if upper < lower then
            nan
        else if lower = upper then
            ft_sum_acc (lower + 1) (acc +. func lower) true
        else
            ft_sum_acc (lower + 1) (acc +. func lower) false
        
    in ft_sum_acc lower 0. false
