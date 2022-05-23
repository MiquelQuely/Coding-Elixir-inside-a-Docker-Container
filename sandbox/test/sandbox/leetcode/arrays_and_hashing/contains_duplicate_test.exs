defmodule Sandbox.Leetcode.ArraysAndHashing.ContainsDuplicateTest do
  use ExUnit.Case

  alias Sandbox.Leetcode.ArraysAndHashing.ContainsDuplicate

  doctest ContainsDuplicate

  describe "contains_duplicate?/1" do
    test "return false with empty list" do
      assert ContainsDuplicate.contains_duplicate?([]) == false
    end

    [
      [1, 2, 3, 4, 5, 1],
      [1, 1],
      [1, 2, 4, 3, 5, 6, 7, 8, 2, 3, 9, 10]
    ]
    |> Enum.each(fn test_case ->
      test "return true when duplicate number is found in #{inspect(test_case)}" do
        assert ContainsDuplicate.contains_duplicate?(unquote(test_case)) == true
      end
    end)

    [
      [1],
      [1, 2, 3, 4, 5, 6, 7, 8],
      [1, 2, -1, 3, 4, 5, 8, 9, 10, 11, 12]
    ]
    |> Enum.each(fn test_case ->
      test "return false when no duplicate number is found in #{inspect(test_case)}" do
        assert ContainsDuplicate.contains_duplicate?(unquote(test_case)) == false
      end
    end)
  end
end
