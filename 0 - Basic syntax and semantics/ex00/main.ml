(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:17:47 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/06/27 03:17:54 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () = print_string "Test with [42]: "
let () = Ft_test_sign.ft_test_sign(42)
let () = print_string "Test with [0]: "
let () = Ft_test_sign.ft_test_sign(0)
let () = print_string "Test with [-42]: "
let () = Ft_test_sign.ft_test_sign(-42)
