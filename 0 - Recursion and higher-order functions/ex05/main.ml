(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:30:17 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:30:18 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    print_string "hfs_m -1: ";
    print_int (Hofstadter_mf.hfs_m (-1));
    print_char '\n';
    print_string "hfs_f -1: ";
    print_int (Hofstadter_mf.hfs_f (-1));
    print_char '\n';
    print_string "hfs_m 0: ";
    print_int (Hofstadter_mf.hfs_m 0);
    print_char '\n';
    print_string "hfs_f 0: ";
    print_int (Hofstadter_mf.hfs_f 0);
    print_char '\n';
    print_string "hfs_m 4: ";
    print_int (Hofstadter_mf.hfs_m 4);
    print_char '\n';
    print_string "hfs_f 4: ";
    print_int (Hofstadter_mf.hfs_f 4);
    print_char '\n'
