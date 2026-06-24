let ft_string_all (f : char -> bool) (str: string) = 
    let strlen = String.length str in
    let rec loop index = 
        if strlen = 0 then
            false
        else if index < strlen then
            if f (String.get str index) = true then
                loop (index + 1)
            else
                false
        else
            true
    in loop 0
