defmodule Sandbox.Leetcode.ArraysAndHashing.ContainsDuplicate do
  @type numbers_list() :: List.t()

  @doc ~S"""

  ## Returns true if number list contains a duplicate

      iex> Sandbox.Leetcode.ArraysAndHashing.ContainsDuplicate.contains_duplicate?([])
      false

      iex> Sandbox.Leetcode.ArraysAndHashing.ContainsDuplicate.contains_duplicate?([1,2,3,4,5])
      false

      iex> Sandbox.Leetcode.ArraysAndHashing.ContainsDuplicate.contains_duplicate?([1,2,2,4,5])
      true
  """
  @spec contains_duplicate?(numbers_list()) :: boolean()
  def contains_duplicate?([]), do: false

  def contains_duplicate?(list) do
    result =
      Enum.reduce_while(list, %{}, fn element, values ->
        case values[element] do
          nil -> {:cont, Map.put(values, element, element)}
          _ -> {:halt, true}
        end
      end)

    result == true
  end
end
