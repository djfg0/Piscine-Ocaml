(* ************************************************************************** *)
(*                                                                            *)
(*                                                        :::      ::::::::   *)
(*   main.ml                                            :+:      :+:    :+:   *)
(*                                                    +:+ +:+         +:+     *)
(*   By: fguarrac <fguarrac@student.42.fr>          +#+  +:+       +#+        *)
(*                                                +#+#+#+#+#+   +#+           *)
(*   Created: 2026/09/06 23:35:00 by fguarrac          #+#    #+#             *)
(*   Updated: 2026/09/06 23:35:01 by fguarrac         ###   ########.fr       *)
(*                                                                            *)
(* ************************************************************************** *)

    let rec print_encoded (l : (int * 'a) list) f =
        match l with
        | [] -> print_char '\n'
        | (n, c) :: y -> 
                        begin
                                print_int n;
                                f c;
                                print_encoded y f
                        end

let () =
    print_encoded (Encode.encode(['a'; 'a'; 'a'; 'b'; 'b'; 'a'; 'a'])) print_char;
    print_encoded (Encode.encode(['a'; 'a'])) print_char;
    print_encoded (Encode.encode(['a'])) print_char;
    print_encoded (Encode.encode(['a'; 'a'; 'b'])) print_char;
    print_encoded (Encode.encode(['a'; 'b'; 'b'])) print_char;
    print_encoded (Encode.encode(['c'; 'a'; 'b'; 'b'; 'c'])) print_char;
    print_encoded (Encode.encode([])) print_char;
    print_encoded (Encode.encode(["salut"; "coucou"])) print_string;
    print_encoded (Encode.encode(["salut"; "salut"; "coucou"; "coucou"])) print_string;
    print_encoded (Encode.encode(["déjà"; "coucou"])) print_string;
    print_encoded (Encode.encode(['3'; '4'; '5'; '5'; '3'])) print_char;
    print_encoded (Encode.encode([3; 4; 5; 5; 3])) print_int;
    print_encoded (Encode.encode([3.1; 4.2; 5.3; 5.3; 3.1])) print_float;
