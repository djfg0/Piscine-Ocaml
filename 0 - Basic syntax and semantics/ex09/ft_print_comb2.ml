(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   ft_print_comb2.ml                                  :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/06/27 03:22:09 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/13 01:20:06 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let ft_print_comb2 () : unit =
    let rec loop first second =
        if first < 10 then
            print_int 0;
        print_int first;
        print_char ' ';
        if second < 10 then
            print_int 0;
        print_int second;
        if first <> 98 then
            begin
                print_char ',';
                print_char ' ';
                if second <> 99 then
                    loop first (second + 1)
                else
                    loop (first + 1) (first + 2)
            end
        else
            print_char '\n'
    in loop 0 1
