(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac </var/spool/mail/fguarrac>        +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/11 18:58:14 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/11 18:58:15 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
	let helix = Helix.generate_helix 10 in
	print_string " Random helix: ";
	print_string (Helix.helix_to_string helix);
	print_newline ();
	print_string "Messenger RNA: ";
	print_string (Rna.rna_to_string (Rna.generate_rna helix));
	print_newline ()
