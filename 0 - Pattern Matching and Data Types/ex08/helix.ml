(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   helix.ml                                           :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/09 00:08:41 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 16:45:19 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type helix = Nucleotides.nucleotide list

let complementary_helix (input : helix) : helix =
    let rec comp_helix_acc (original : helix) (output : helix) =
        match original with
        | [] -> output
        | first :: rest -> comp_helix_acc rest (output @ [(Nucleotides.generate_nucleotide (match first.nu with
                                           | A -> 'T'
                                           | T -> 'A'
                                           | C -> 'G'
                                           | G -> 'C'
                                           | _ -> '?'))])
    in comp_helix_acc input []

let helix_to_string (input : helix) : string =
    let rec loop (he : helix) (output : string) =
        match he with
        | [] -> output
        | first :: rest -> loop rest (output ^ (match first.nu with
												| A -> "A"
												| T -> "T"
												| C -> "C"
												| G -> "G"
												| _ -> "?"))
    in loop input ""

let generate_helix (n : int) : helix =
    Random.self_init (); 
    let nucleobases = 4 in
    let rec gen_helix_acc (output : helix) (i : int) : helix =
        if i < n then
            gen_helix_acc ((Nucleotides.generate_nucleotide (match (Random.int nucleobases) with
            | 0 -> 'A'
            | 1 -> 'T'
            | 2 -> 'C'
            | 3 -> 'G'
            | _ -> '?')) :: output) (i + 1)
        else
            output
    in gen_helix_acc [] 0
