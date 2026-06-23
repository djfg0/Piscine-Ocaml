(*
let rec ft_print_char_from_int (nbr : int) =
	if nbr - (int_of_char 'a') = 26 then
		print_char '\n'
	else begin
	    print_char (char_of_int nbr);
		ft_print_char_from_int (nbr + 1)
    end

let ft_print_alphabet = fun () ->
    let nbr = int_of_char 'a' in
	ft_print_char_from_int nbr
*)


let ft_print_alphabet = fun () ->
    let int_of_char_a = int_of_char 'a' in
    let int_of_char_z = int_of_char 'z' in
    let rec loop current_int_of_char =
        print_char (char_of_int current_int_of_char);
        if current_int_of_char = int_of_char_z then
            print_char '\n'
        else
            loop (current_int_of_char + 1)
    in
    loop (int_of_char_a)
