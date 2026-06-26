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

let rot (n : int) (c : char) =
    let int_of_a = int_of_char 'a' in
    let int_of_z = int_of_char 'z' in
    let int_of_A = int_of_char 'A' in
    let int_of_Z = int_of_char 'Z' in
    let int_of_param = int_of_char c in
    if n = 0 then
        c
    else if n > 0 then
        begin
            if ft_is_lower c then
                if (int_of_param + n) <= int_of_z then
                    char_of_int (int_of_param + n)
                else
                    char_of_int (n - (int_of_z - int_of_param) + int_of_a - 1)
            else if ft_is_upper c then
                if (int_of_param + n) <= int_of_Z then
                    char_of_int (int_of_param + n)
                else
                    char_of_int (n - (int_of_Z - int_of_param) + int_of_A - 1)
            else
                c
        end
    else
        begin
            if ft_is_lower c then
                if (int_of_param + n) >= int_of_a then
                    char_of_int (int_of_param + n)
                else
                    char_of_int (int_of_z + n + (int_of_param - int_of_a) + 1)
            else if ft_is_upper c then
                if (int_of_param + n) >= int_of_A then
                    char_of_int (int_of_param + n)
                else
                    char_of_int (int_of_Z + n + (int_of_param - int_of_A) + 1)
            else
                c
        end

let ft_rot_n (n: int) (str : string) =
    String.map (rot n) str 
