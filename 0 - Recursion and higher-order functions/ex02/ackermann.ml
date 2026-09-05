(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ackermann.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:28:44 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:28:45 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec ackermann (m : int) (n : int) =
    if m < 0 || n < 0 then
        -1
    else if m = 0 then
        n + 1
    else if n = 0 then (* Checking for m is useless, all cases are covered before *)
        ackermann (m - 1) 1
    else (* Checking for m or n is useless, all cases are covered before *)
        ackermann (m - 1) (ackermann m (n - 1))
