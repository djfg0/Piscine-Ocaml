(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_countdown.ml                                    :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:19:09 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/06/27 03:19:11 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_int (nbr : int) = 
    print_int nbr;
    print_char '\n'

let rec ft_decrement (nbr : int) =
    ft_print_int nbr;
    if nbr > 0 then
        ft_decrement (nbr - 1)
    else
        ()

let ft_countdown (nbr : int) =
    if nbr < 0 then
        ft_print_int 0
    else
        ft_decrement nbr
