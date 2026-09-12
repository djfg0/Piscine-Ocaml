(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/11 05:35:42 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 13:28:20 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type nucleobase = Nucleotides.nucleobase = A | T | C | G | U | None

let () =
	(*let helix = Helix.generate_helix 100 in
	let r = Rna.generate_rna helix in*)
	let (r : Rna.rna) = [A; U; G; C; U; A; G; C; A; U; A; A] in
	let prot = Ribosome.decode_arn r in
	print_endline (Ribosome.string_of_protein prot)



