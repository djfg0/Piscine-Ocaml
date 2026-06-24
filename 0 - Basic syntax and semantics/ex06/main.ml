(******************************************************************************)
(*                       Predicate functions definition                       *)
(******************************************************************************)

let ft_is_upper (c : char) =
    if (c >= 'A' && c <= 'Z') then
        true
    else
        false

let ft_is_lower (c : char) =
    if (c >= 'a' && c <= 'z') then
        true
    else
        false

let ft_is_alpha (c : char) =
    if (ft_is_upper c || ft_is_lower c) then
        true
    else
        false

let ft_is_digit (c : char) =
    if (c >= '0' && c <= '9') then
        true
    else
        false

let ft_is_alnum (c : char) =
    if (ft_is_alpha c || ft_is_digit c) then
        true
    else
        false

let ft_is_xdigit (c : char) =
    if (ft_is_digit c || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F')) then
        true
    else
        false

(******************************************************************************)
(*                                    TEST                                    *)
(******************************************************************************)

(*****************)
(* Test function *)
(*****************)

let ft_test_string_all (predicate : (char -> bool)) (str : string) =
    print_string "  Testing '";
    print_string str;
    print_string "': ";
    if Ft_string_all.ft_string_all predicate str = true then
        print_endline "True"
    else
        print_endline "False"

(***************)
(* ft_is_upper *)
(***************)

let () =
    print_endline "Testing ft_string_all with ft_is_upper"



let () =
    ft_test_string_all ft_is_upper "Coucou"

let () =
    ft_test_string_all ft_is_upper "coucou"

let () =
    ft_test_string_all ft_is_upper "COUCOU"

let () =
    ft_test_string_all ft_is_upper "C"

let () =
    ft_test_string_all ft_is_upper "c"

let () =
    ft_test_string_all ft_is_upper "Coucou42"

let () =
    ft_test_string_all ft_is_upper "coucou42"

let () =
    ft_test_string_all ft_is_upper "COUCOU42"

let () =
    ft_test_string_all ft_is_upper "42"

let () =
    ft_test_string_all ft_is_upper "8"

let () =
    ft_test_string_all ft_is_upper "1337BEEF"

let () =
    ft_test_string_all ft_is_upper ""

(***************)
(* ft_is_lower *)
(***************)

let () =
    print_endline "\nTesting ft_string_all with ft_is_lower"



let () =
    ft_test_string_all ft_is_lower "Coucou"

let () =
    ft_test_string_all ft_is_lower "coucou"

let () =
    ft_test_string_all ft_is_lower "COUCOU"

let () =
    ft_test_string_all ft_is_lower "C"

let () =
    ft_test_string_all ft_is_lower "c"

let () =
    ft_test_string_all ft_is_lower "Coucou42"

let () =
    ft_test_string_all ft_is_lower "coucou42"

let () =
    ft_test_string_all ft_is_lower "COUCOU42"

let () =
    ft_test_string_all ft_is_lower "42"

let () =
    ft_test_string_all ft_is_lower "8"

let () =
    ft_test_string_all ft_is_lower "1337BEEF"

let () =
    ft_test_string_all ft_is_lower ""

(***************)
(* ft_is_alpha *)
(***************)

let () =
    print_endline "\nTesting ft_string_all with ft_is_alpha"



let () =
    ft_test_string_all ft_is_alpha "Coucou"

let () =
    ft_test_string_all ft_is_alpha "coucou"

let () =
    ft_test_string_all ft_is_alpha "COUCOU"

let () =
    ft_test_string_all ft_is_alpha "C"

let () =
    ft_test_string_all ft_is_alpha "c"

let () =
    ft_test_string_all ft_is_alpha "Coucou42"

let () =
    ft_test_string_all ft_is_alpha "coucou42"

let () =
    ft_test_string_all ft_is_alpha "COUCOU42"

let () =
    ft_test_string_all ft_is_alpha "42"

let () =
    ft_test_string_all ft_is_alpha "8"

let () =
    ft_test_string_all ft_is_alpha "1337BEEF"

let () =
    ft_test_string_all ft_is_alpha ""

(***************)
(* ft_is_digit *)
(***************)

let () =
    print_endline "\nTesting ft_string_all with ft_is_digit"



let () =
    ft_test_string_all ft_is_digit "Coucou"

let () =
    ft_test_string_all ft_is_digit "coucou"

let () =
    ft_test_string_all ft_is_digit "COUCOU"

let () =
    ft_test_string_all ft_is_digit "C"

let () =
    ft_test_string_all ft_is_digit "c"

let () =
    ft_test_string_all ft_is_digit "Coucou42"

let () =
    ft_test_string_all ft_is_digit "coucou42"

let () =
    ft_test_string_all ft_is_digit "COUCOU42"

let () =
    ft_test_string_all ft_is_digit "42"

let () =
    ft_test_string_all ft_is_digit "8"

let () =
    ft_test_string_all ft_is_digit "1337BEEF"

let () =
    ft_test_string_all ft_is_digit ""

(***************)
(* ft_is_alnum *)
(***************)

let () =
    print_endline "\nTesting ft_string_all with ft_is_alnum"



let () =
    ft_test_string_all ft_is_alnum "Coucou"

let () =
    ft_test_string_all ft_is_alnum "coucou"

let () =
    ft_test_string_all ft_is_alnum "COUCOU"

let () =
    ft_test_string_all ft_is_alnum "C"

let () =
    ft_test_string_all ft_is_alnum "c"

let () =
    ft_test_string_all ft_is_alnum "Coucou42"

let () =
    ft_test_string_all ft_is_alnum "coucou42"

let () =
    ft_test_string_all ft_is_alnum "COUCOU42"

let () =
    ft_test_string_all ft_is_alnum "42"

let () =
    ft_test_string_all ft_is_alnum "8"

let () =
    ft_test_string_all ft_is_alnum "1337BEEF"

let () =
    ft_test_string_all ft_is_alnum ""

(****************)
(* ft_is_xdigit *)
(****************)

let () =
    print_endline "\nTesting ft_string_all with ft_is_xdigit"



let () =
    ft_test_string_all ft_is_xdigit "Coucou"

let () =
    ft_test_string_all ft_is_xdigit "coucou"

let () =
    ft_test_string_all ft_is_xdigit "COUCOU"

let () =
    ft_test_string_all ft_is_xdigit "C"

let () =
    ft_test_string_all ft_is_xdigit "c"

let () =
    ft_test_string_all ft_is_xdigit "Coucou42"

let () =
    ft_test_string_all ft_is_xdigit "coucou42"

let () =
    ft_test_string_all ft_is_xdigit "COUCOU42"

let () =
    ft_test_string_all ft_is_xdigit "42"

let () =
    ft_test_string_all ft_is_xdigit "8"

let () =
    ft_test_string_all ft_is_xdigit "1337BEEF"

let () =
    ft_test_string_all ft_is_xdigit ""
