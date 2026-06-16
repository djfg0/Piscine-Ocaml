let rec ft_power (nbr : int) (power : int) =
    if power = 0 then
        1
    else
        nbr * ft_power nbr (power - 1)
