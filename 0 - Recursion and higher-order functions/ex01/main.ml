(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/05 17:28:22 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/05 17:28:24 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () =
    print_endline (Repeat_string.repeat_string (-1));
    print_endline (Repeat_string.repeat_string ~str:"Blabla" (-1));
    print_endline (Repeat_string.repeat_string 0);
    print_endline (Repeat_string.repeat_string ~str:"Blabla" 0);
    print_endline (Repeat_string.repeat_string ~str:"Toto" 1);
    print_endline (Repeat_string.repeat_string ~str:"Toto" 2);
    print_endline (Repeat_string.repeat_string 1);
    print_endline (Repeat_string.repeat_string 2);
    print_endline (Repeat_string.repeat_string 3);
    print_endline (Repeat_string.repeat_string 4);
    print_endline (Repeat_string.repeat_string 5);
