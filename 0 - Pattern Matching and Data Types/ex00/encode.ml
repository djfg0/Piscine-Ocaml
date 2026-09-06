let encode (l : 'a list) : (int * 'a) list =
    let rec list_append (l : 'b list) (element : 'b) : 'b list =
        match l with
        | [] -> [element]
        | first :: rest -> first :: list_append rest element
    in
    let rec encode_acc (l : 'a list) (i : int) (output : (int * 'a) list) : (int * 'a) list =
        match l with
            | [] -> output
            | [x] -> list_append output (i, x)
            | x :: y :: [] -> 
                    begin
                        if x = y then
                            list_append output (i + 1, x)
                        else
                            encode_acc (y :: []) 1 (list_append output (i, x))
                    end
            | x :: y :: z :: rest ->
                    begin
                        if x = y then
                            encode_acc (y :: z :: rest) (i + 1) output
                        else
                            encode_acc (y :: z :: rest) 1 (list_append output (i, x))
                    end

    in encode_acc l 1 []
