(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   gray.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/07 18:15:37 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/07 18:15:38 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let gray (bits : int) : unit =
    if bits <= 0 then
        print_char '\n'
    else
        begin
            let xor_string (s1 : string) (s2 : string)  : string =
                let rec loop (i: int) (s: string) : string =
                    if i = bits then
                        s
                    else if String.get s1 i <> String.get s2 i then
                        loop (i + 1) (s ^ String.make 1 '1')
                    else
                        loop (i + 1) (s ^ String.make 1 '0')
                in loop 0 ""
            in

            let rhs_string (s1 : string) : string = 
                (String.make 1 '0') ^ String.sub s1 0 (bits - 1)
            in

            let inc_string (current : string) : string =
                let rec inc_loop index carry incremented =
                    if index < 0 then
                        incremented
                    else if carry = true then
                        begin
                            if String.get current index = '0' then
                                inc_loop (index - 1) false incremented ^ (String.make 1 '1')
                            else
                                inc_loop (index - 1) true incremented ^ (String.make 1 '0')
                        end
                    else
                        begin
                            if String.get current index = '0' then
                                inc_loop (index - 1) false incremented ^ (String.make 1 '0')
                            else
                                inc_loop (index - 1) false incremented ^ (String.make 1 '1')
                        end
                in inc_loop (bits - 1) true ""
            in

            let start = String.make bits '0' in
            let stop = String.make bits '1' in
            let rec gray_loop (gray_val: string) (current_val : string) =
                print_string gray_val;
                if current_val = stop then
                    print_char '\n'
                else
                    begin
                        let next_val = inc_string current_val
                        in
                        print_char ' ';
                        gray_loop ((xor_string next_val (rhs_string next_val))) next_val
                    end
            in gray_loop start start
        end
