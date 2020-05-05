defmodule Sol22 do
    def prod(input_list, item) do
        Enum.reduce(List.delete(input_list, item), 1, fn i,acc -> i*acc end)
    end

    def exclusive_product(input_list) do
        Enum.map(input_list, fn item -> prod(input_list, item) end)
    end
end