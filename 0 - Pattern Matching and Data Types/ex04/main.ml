(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/08 00:35:14 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/08 01:17:11 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let run_test (base : char) =
        let nucleo = Nucleotides.generate_nucleotide base in
        print_string "Phosphate of nucleotide ";
        print_char base;
        print_string ": ";
        print_endline (Nucleotides.get_phosphate nucleo);
        print_string "Deoxyribose of nucleotide ";
        print_char base;
        print_string ": ";
        print_endline (Nucleotides.get_deoxyribose nucleo);
        print_string "Nucleobase of nucleotide ";
        print_char base;
        print_string ": ";
        print_char (Nucleotides.get_nucleobase nucleo);
        print_char '\n'
    in
        run_test 'T';
        print_char '\n';
        run_test 'X'
