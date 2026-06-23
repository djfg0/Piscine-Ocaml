let ft_print_rev (str : string) =
    let strlen = String.length str in
    let rec loop index =
        if index < strlen then
            begin
                loop (index + 1);
                print_char (String.get str index)
            end
    in loop 0;
    print_char '\n'
