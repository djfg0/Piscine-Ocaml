(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   repeat_string.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/03 02:38:40 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/03 02:38:42 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec repeat_string ?(str : string = "x") (n : int) =
    if n < 0 then
        "Error"
    else if n = 0 then
        ""
    else
        str ^ (repeat_string ~str (n - 1))
