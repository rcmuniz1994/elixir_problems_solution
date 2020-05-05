defmodule Sol2 do
    def prod_of_all(input_list) do
        Enum.reduce(input_list,1 , fn i,acc -> i*acc end)
    end

    def exclusive_product(input_list) do
        product_total = prod_of_all(input_list)
        Enum.map(input_list, fn item -> product_total/item end) 
    end
end