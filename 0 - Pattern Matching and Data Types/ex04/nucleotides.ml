(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   nucleotides.ml                                     :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/08 00:35:19 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/08 00:35:20 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type phosphate = string
type deoxyribose = string

type nucleobase =
    | A
    | T
    | C
    | G

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

let generate_nucleotide (nu_base : char) : nucleotide option =
    let nucleobase = match nu_base with
    | 'A' -> Some A
    | 'T' -> Some T
    | 'C' -> Some C
    | 'G' -> Some G
    | _ -> None
    in
    match nucleobase with
    | Some base -> 
        Some
        {
            ph = "phosphate";
            de = "deoxyribose";
            nu = base
        }
    | None -> None
