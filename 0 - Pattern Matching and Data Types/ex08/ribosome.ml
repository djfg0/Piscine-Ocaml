(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ribosome.ml                                        :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/11 02:32:42 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 17:56:52 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type nucleobase = Nucleotides.nucleobase = A | T | C | G | U | None

type aminoacid =
	| Ala	| Arg	| Asn	| Asp	| Cys
	| Gln	| Glu	| Gly	| His	| Ile
	| Leu	| Lys	| Met	| Phe	| Pro
	| Ser	| Thr	| Trp	| Tyr	| Val
	| Stop

type protein = aminoacid list

let generate_bases_triplets (rna : Rna.rna) : (Nucleotides.nucleobase * Nucleotides.nucleobase * Nucleotides.nucleobase) list =
	let rec gen_acc (r : Rna.rna) (triplets : (Nucleotides.nucleobase * Nucleotides.nucleobase * Nucleotides.nucleobase) list) =
		match r with
		| first :: second :: third :: rest -> gen_acc rest (triplets @ [(first, second, third)])
		| _ -> triplets
	in gen_acc rna []

let string_of_protein (prot : protein) : string =
	let rec str_of_prot_loop (p : protein) (output : string) : string =
		match p with
		| first :: rest -> str_of_prot_loop rest (match first with
													| Ala -> "Alanine" ^ "-" ^ output
													| Arg -> "Arginine" ^ "-" ^ output
													| Asn -> "Asparagine" ^ "-" ^ output
													| Asp -> "Aspartique" ^ "-" ^ output
													| Cys -> "Cysteine" ^ "-" ^ output
													| Gln -> "Glutamine" ^ "-" ^ output
													| Glu -> "Glutamique" ^ "-" ^ output
													| Gly -> "Glycine" ^ "-" ^ output
													| His -> "Histidine" ^ "-" ^ output
													| Ile -> "Isoleucine" ^ "-" ^ output
													| Leu -> "Leucine" ^ "-" ^ output
													| Lys -> "Lysine" ^ "-" ^ output
													| Met -> "Methionine" ^ "-" ^ output
													| Phe -> "Phenylalanine" ^ "-" ^ output
													| Pro -> "Proline" ^ "-" ^ output
													| Ser -> "Serine" ^ "-" ^ output
													| Thr -> "Threonine" ^ "-" ^ output
													| Trp -> "Tryptophane" ^ "-" ^ output
													| Tyr -> "Tyrosine" ^ "-" ^ output
													| Val -> "Valine" ^ "-" ^ output
													| Stop -> "End of translation" ^ output)
		| [] -> output
	in str_of_prot_loop prot ""

let decode_arn (r : Rna.rna) : protein =
	let (codons_lst : (Nucleotides.nucleobase * Nucleotides.nucleobase * Nucleotides.nucleobase) list) = generate_bases_triplets r in
		let rec decode_loop codons (prot : protein) =
			match codons with
			| [] -> prot
			| (G, C, _) :: rest -> decode_loop rest ([Ala] @ prot)
			| (A, G, A) :: rest
			| (A, G, G) :: rest
			| (C, G, _) :: rest -> decode_loop rest ([Arg] @ prot)
			| (A, A, C) :: rest
			| (A, A, U) :: rest -> decode_loop rest ([Asn] @ prot)
			| (G, A, C) :: rest
			| (G, A, U) :: rest -> decode_loop rest ([Asp] @ prot)
			| (U, G, C) :: rest
			| (U, G, U) :: rest -> decode_loop rest ([Cys] @ prot)
			| (C, A, A) :: rest
			| (C, A, G) :: rest -> decode_loop rest ([Gln] @ prot)
			| (G, A, A) :: rest
			| (G, A, G) :: rest -> decode_loop rest ([Glu] @ prot)
			| (G, G, _) :: rest -> decode_loop rest ([Gly] @ prot)
			| (C, A, C) :: rest
			| (C, A, U) :: rest -> decode_loop rest ([His] @ prot)
			| (A, U, A) :: rest
			| (A, U, C) :: rest
			| (A, U, U) :: rest -> decode_loop rest ([Ile] @ prot)
			| (C, U, _) :: rest
			| (U, U, A) :: rest
			| (U, U, G) :: rest -> decode_loop rest ([Leu] @ prot)
			| (A, A, A) :: rest
			| (A, A, G) :: rest -> decode_loop rest ([Lys] @ prot)
			| (A, U, G) :: rest -> decode_loop rest ([Met] @ prot)
			| (U, U, C) :: rest
			| (U, U, U) :: rest -> decode_loop rest ([Phe] @ prot)
			| (C, C, _) :: rest -> decode_loop rest ([Pro] @ prot)
			| (U, C, _) :: rest
			| (A, G, U) :: rest
			| (A, G, C) :: rest -> decode_loop rest ([Ser] @ prot)
			| (A, C, _) :: rest -> decode_loop rest ([Thr] @ prot)
			| (U, G, G) :: rest -> decode_loop rest ([Trp] @ prot)
			| (U, A, C) :: rest
			| (U, A, U) :: rest -> decode_loop rest ([Tyr] @ prot)
			| (G, U, _) :: rest -> decode_loop rest ([Val] @ prot)
			| (U, A, A) :: rest
			| (U, A, G) :: rest
			| (U, G, A) :: rest -> ([Stop] @ prot)
			| _ -> assert false
		in decode_loop codons_lst []
