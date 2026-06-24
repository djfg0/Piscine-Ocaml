let ft_is_char (c : char) =
    if (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') then
        true
    else
        false

let ft_is_digit (d : char) = 
    if (d >= '0' && d <= '9') then
        true
    else
        false

(**************)
(* ft_is_char *)
(**************)

let () = 
    print_endline "Testing ft_string_all with ft_is_char"

let () =
    print_string "  Testing with 'coucou': ";
    if Ft_string_all.ft_string_all ft_is_char "coucou" = true then
        print_endline "True"
    else
        print_endline "False"

let () =
    print_string "  Testing with 'COUCOU': ";
    if Ft_string_all.ft_string_all ft_is_char "COUCOU" = true then
        print_endline "True"
    else
        print_endline "False"


let () =
    print_string "  Testing with 'Coucou': ";
    if Ft_string_all.ft_string_all ft_is_char "Coucou" = true then
        print_endline "True"
    else
        print_endline "False"

(***************)
(* ft_is_digit *)
(***************)

let () = 
    print_endline "Testing ft_string_all with ft_is_digit"

let () =
    print_string "  Testing with '1234567890': ";
    if Ft_string_all.ft_string_all ft_is_digit "1234567890" = true then
        print_endline "True"
    else
        print_endline "False"

(***************)
(* ft_is_ *)
(***************)

