(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   rna.ml                                             :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/11 01:25:55 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 18:03:03 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type rna = Nucleotides.nucleobase list

let rna_to_string (r : rna) : string =
    let rec loop (rn : rna) (output : string) =
        match rn with
        | [] -> output
        | first :: rest -> loop rest (output ^ (match first with
												| A -> "A"
												| T -> "T"
												| C -> "C"
												| G -> "G"
												| U -> "U"
												| _ -> "?"))
    in loop r ""

let generate_rna (input : Helix.helix) : rna =
    let rec gen_rna_acc (he : Helix.helix) (output : rna) =
        match he with
        | [] -> output
        | first :: rest -> gen_rna_acc rest (output @ [(match first.nu with
                                           | A -> U
                                           | T -> A
                                           | C -> G
                                           | G -> C
                                           | _ -> None)])
    in gen_rna_acc input []
