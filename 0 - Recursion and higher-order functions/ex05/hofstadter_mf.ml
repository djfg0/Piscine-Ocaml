(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   hofstadter_mf.ml                                   :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:30:01 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:30:02 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let rec hfs_f (n : int) =
    if n < 0 then
        -1
    else if n = 0 then
        1
    else
        n - hfs_m (hfs_f (n - 1))

and hfs_m (n : int) =
    if n < 0 then
        -1
    else if n = 0 then
        0
    else
        n - hfs_f (hfs_m (n - 1))
