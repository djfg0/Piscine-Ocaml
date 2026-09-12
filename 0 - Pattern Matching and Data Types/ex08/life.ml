(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   life.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac </var/spool/mail/fguarrac>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/11 18:58:23 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 18:58:25 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

type nucleobase = Nucleotides.nucleobase = A | T | C | G | U | None

let life (s : string) : unit =
	let str_len = String.length s in
	if str_len = 0 then
		() (* Print error message? *)
	else (* Handle user errors? *)
		begin
			(* generate a helix -> show input nucleobases *)
			let rec hel_loop (i : int) (hel : Helix.helix) =
				if i = str_len then
					hel
				else (* -> Print création of nucleotides *)
					hel_loop (i + 1) (hel @ [(Nucleotides.generate_nucleotide (match (String.get s i) with
															   | 'A' -> 'A'
															   | 'T' -> 'T'
															   | 'C' -> 'C'
															   | 'G' -> 'G'
															   | _ -> '?'))])
			in
			let hel = hel_loop 0 [] in
			print_string "Helix: ";
			print_endline (Helix.helix_to_string hel); (* print helix *)
			print_string "Complementary helix: "; (* and print complementary helix *)
			print_endline (Helix.helix_to_string (Helix.complementary_helix hel));
			let rna = Rna.generate_rna hel in (* print rna *)
			print_string "Rna of helix: ";
			print_endline (Rna.rna_to_string rna);
			print_string "Protein : "; (* print protein *)
			print_endline (Ribosome.string_of_protein (Ribosome.decode_arn rna))
		end
