let run_test (n : int) (str : string) =
    print_string "Testing ft_rot_n with ";
    print_int n;
    print_string " and \"";
    print_string str;
    print_string "\": \"";
    print_string (Ft_rot_n.ft_rot_n n str);
    print_endline "\""

let () =
    run_test 1 "abcdefghijklmnopqrstuvwxyz"
let () =
    run_test 13 "abcdefghijklmnopqrstuvwxyz"
let () =
    run_test 42 "0123456789"
let () =
    run_test 2 "OI2EAS67B9"
let () =
    run_test 0 "Damned !"
let () =
    run_test 42 ""
let () =
    run_test 1 "NBzlk qnbjr !"
let () =
    run_test 1 "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
let () =
    run_test (-13) "NOPQRSTUVWXYZABCDEFGHIJKLM"
let () =
    run_test (-13) "nopqrstuvwxyzabcdefghijklm"
let () =
    run_test (-1) "bcdefghijklmnopqrstuvwxyza"
let () =
    run_test (-42) "0123456789"
let () =
    run_test (-2) "QK2GCU67D9"
let () =
    run_test (-0) "Damned !"
let () =
    run_test (-42) ""
let () =
    run_test (-1) "OCaml rocks !"
