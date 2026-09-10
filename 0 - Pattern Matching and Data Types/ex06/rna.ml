type rna = Nucleotides.nucleotide list

let rna_to_string (r : rna) : string =
    let rec loop (he : Helix.helix) (output : string) =
        match he with
        | [] -> output
        | first :: rest -> loop rest (output ^ (String.make 1 (Nucleotides.get_nucleobase first)))
    in loop r String.empty

let generate_rna (input : Helix.helix) : rna =
    let rec gen_rna_acc (he : Helix.helix) (output : rna) =
        match he with
        | [] -> output
        | first :: rest -> gen_rna_acc rest (output @ [(Nucleotides.generate_nucleotide (match Nucleotides.get_nucleobase first with
                                           | 'A' -> 'U'
                                           | 'T' -> 'A'
                                           | 'C' -> 'G'
                                           | 'G' -> 'C'
                                           | _ -> '?'))])
    in gen_rna_acc input []
