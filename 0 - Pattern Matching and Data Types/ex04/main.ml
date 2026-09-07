(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/08 00:35:14 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/08 00:35:15 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    let nucleo = Nucleotides.generate_nucleotide 'T' in
    match nucleo with
    | Some nu -> 
            begin
                print_endline (Nucleotides.get_phosphate nu);
                print_endline (Nucleotides.get_deoxyribose nu);
                print_char (Nucleotides.get_nucleobase nu);
                print_char '\n'
            end
    | None -> print_endline "Nucleotide didn't get generated"

let () =
    let nucleo = Nucleotides.generate_nucleotide 'X' in
    match nucleo with
    | Some nu -> 
            begin
                print_endline (Nucleotides.get_phosphate nu);
                print_endline (Nucleotides.get_deoxyribose nu);
                print_char (Nucleotides.get_nucleobase nu);
                print_char '\n'
            end
    | None -> print_endline "Nucleotide didn't get generated"
