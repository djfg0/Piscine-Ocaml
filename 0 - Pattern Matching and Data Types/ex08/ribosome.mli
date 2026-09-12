(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ribosome.mli                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/11 02:32:47 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 06:27:30 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type aminoacid
type protein

val generate_bases_triplets : Rna.rna -> (Nucleotides.nucleobase * Nucleotides.nucleobase * Nucleotides.nucleobase) list
val string_of_protein : protein -> string
val decode_arn : Rna.rna -> protein
