(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_string.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:28:28 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:28:29 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec repeat_string ?(str : string = "x") (n : int) =
    if n < 0 then
        "Error"
    else if n = 0 then
        ""
    else
        str ^ (repeat_string ~str (n - 1))
