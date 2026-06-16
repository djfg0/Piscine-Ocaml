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
