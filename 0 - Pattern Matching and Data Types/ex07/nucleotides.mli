(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   nucleotides.mli                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/08 00:35:24 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 18:20:21 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type phosphate
type deoxyribose
type nucleobase =
	| A
	| T
	| C
	| G
	| U
	| None

type nucleotide =
{
    ph : phosphate;
    de : deoxyribose;
    nu : nucleobase
}

val generate_nucleotide : char -> nucleotide

val get_phosphate : nucleotide -> string
val get_deoxyribose : nucleotide -> string
val get_nucleobase : nucleotide -> nucleobase
