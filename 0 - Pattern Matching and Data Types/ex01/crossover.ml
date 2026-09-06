(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   crossover.ml                                       :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/06 23:35:07 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/06 23:35:09 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

let crossover (l1 : 'a list) (l2 : 'a list) : 'a list =
    let rec list_append (l : 'a list) (element : 'a) : 'a list =
            match l with
            | [] -> [element]
            | first :: rest -> first :: list_append rest element
    in
    let rec loop1 (lst1 : 'a list) (output : 'a list) =
        match lst1 with
        | [] -> output
        | l1_first :: l1_rest ->
                begin
                    let rec loop2 (lst2 : 'a list) =
                        match lst2 with
                        | [] -> loop1 l1_rest output
                        | l2_first :: l2_rest ->
                                begin
                                    if l1_first = l2_first then
                                        loop1 l1_rest (list_append output l2_first)
                                    else
                                        loop2 l2_rest
                                end
                    in loop2 l2
                end
    in loop1 l1 []
