(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:19:22 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/06/27 03:19:23 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let () = Ft_countdown.ft_countdown 3
let () = print_char '\n'
let () = Ft_countdown.ft_countdown 0
let () = print_char '\n'
let () = Ft_countdown.ft_countdown (-1)
