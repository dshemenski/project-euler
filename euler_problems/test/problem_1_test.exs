defmodule Problem_1Test do
  use ExUnit.Case

  test "sum of multiples of 3 less than 10" do
    assert Problem_1.sum_divisible_by(3,10) == 18
  end
end
