(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   rna.mli                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/11 01:26:01 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 10:26:47 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type rna = Nucleotides.nucleobase list

val generate_rna : Helix.helix -> rna
val rna_to_string : rna -> string
