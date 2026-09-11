(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   nucleotides.ml                                     :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/08 00:35:19 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 09:01:46 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type phosphate = string
type deoxyribose = string

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

let get_phosphate (nu_tide : nucleotide) : phosphate =
    nu_tide.ph

let get_deoxyribose (nu_tide : nucleotide) : deoxyribose =
    nu_tide.de

let get_nucleobase (nu_tide : nucleotide) : char =
    match nu_tide.nu with
    | A -> 'A'
    | C -> 'C'
    | T -> 'T'
    | G -> 'G'
	| U -> 'U'
    | None -> '?'

let generate_nucleotide (nu_base : char) : nucleotide =
    let nucleobase = match nu_base with
    | 'A' -> A
    | 'T' -> T
    | 'C' -> C
    | 'G' -> G
	| 'U' -> U
    | _ -> None
    in
        {
            ph = "phosphate";
            de = "deoxyribose";
            nu = nucleobase
        }

let nucleobase_to_char (nu_base : nucleobase) : char =
	match nu_base with
	| A -> 'A'
	| C -> 'C'
	| T -> 'T'
	| G -> 'G'
	| U -> 'U'
	| None -> '?'
