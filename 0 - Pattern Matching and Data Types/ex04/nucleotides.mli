(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   nucleotides.mli                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/08 00:35:24 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/08 00:35:25 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type nucleotide
type phosphate
type deoxyribose
type nucleobase =
    | A
    | T
    | C
    | G

val generate_nucleotide : char -> nucleotide option

val get_phosphate : nucleotide -> string
val get_deoxyribose : nucleotide -> string
val get_nucleobase : nucleotide -> char
