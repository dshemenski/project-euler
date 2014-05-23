defmodule Problem_4Test do
  use ExUnit.Case

  test "the truth" do
    assert Problem_4.largest_palindrome(999..100) == 906609
  end
end
