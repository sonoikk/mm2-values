local Offers = {}

Offers.Ratings = {
    MegaW = 1.25,
    W = 1.10,
    Fair = 1,
    L = 0.90,
    MegaL = 0.75
}


function Offers.Check(myValue, theirValue)

    local ratio = theirValue / myValue

    if ratio >= Offers.Ratings.MegaW then
        return "Mega W"
    elseif ratio >= Offers.Ratings.W then
        return "W"
    elseif ratio >= Offers.Ratings.Fair then
        return "Fair"
    elseif ratio >= Offers.Ratings.L then
        return "L"
    else
        return "Mega L"
    end

end


function Offers.FindNeeded(theirValue, goal, inventory, Values)

    local needed = theirValue * Offers.Ratings[goal]

    for item, amount in pairs(inventory) do
        if Values.Godlies[item] then
            if Values.Godlies[item].Value >= needed then
                return item
            end
        end
    end

    return "Nothing found"

end


return Offers
