(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   helix.mli                                          :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/09 00:08:48 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/10 22:49:11 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type helix = Nucleotides.nucleotide list

val generate_helix : int -> helix
val helix_to_string : helix -> string
val complementary_helix : helix -> helix
