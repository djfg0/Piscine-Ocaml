(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   fibonacci.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/03 02:39:56 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/03 02:39:57 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let fibonacci (n : int) =
    let rec fibonacci_acc n (index_minus_1 : int) (index_minus_2 : int) =
        if n < 0 then
            -1
        else if n >= 2 then
            fibonacci_acc (n - 1) (index_minus_1 + index_minus_2) index_minus_1
        else if n = 0 then
            0
        else
            index_minus_1 + index_minus_2
    in fibonacci_acc n 0 1
