(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_test_sign.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:18:08 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 00:21:58 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_test_sign (nbr : int) : unit =
        if nbr < 0 then
                print_endline "negative"
        else
                print_endline "positive"
