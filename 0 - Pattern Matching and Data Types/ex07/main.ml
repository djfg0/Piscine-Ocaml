(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/11 05:35:42 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/15 21:07:14 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type nucleobase = Nucleotides.nucleobase = A | T | C | G | U | None

let () =
	let helix = Helix.generate_helix 99 in

	(* Generate random rna (who may not contain a stop codon) *)
	(**)

	let r = Rna.generate_rna helix in
	print_string "Random rna: ";
	print_endline (Rna.rna_to_string r);

	(**)
	(* End of random rna generation *)

	(* Or, input a manual rna *)
	(**)

	(*let (r : Rna.rna) = [A; U; G; C; U; A; G; C; A; U; A; A] in*)

	(**)
	(* End of manual iput *)
	let prot = Ribosome.decode_arn r in
	print_endline (Ribosome.string_of_protein prot)
