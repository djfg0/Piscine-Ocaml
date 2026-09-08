(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   helix.mli                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/09 00:08:48 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/09 00:08:49 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type helix

val generate_helix : int -> helix
val helix_to_string : helix -> string
val complementary_helix : helix -> helix
