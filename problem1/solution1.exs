defmodule Sol1 do
  def diff_set(input_list, k) do
    List.foldr(input_list, [], fn item, acc -> acc++[k-item] end)
    |> MapSet.new()
  end

  def list2Set(input_list), do: input_list |> MapSet.new()

  def match_sum(input_list, k) do
    !MapSet.disjoint?(diff_set(input_list, k), list2Set(input_list))
  end
end
