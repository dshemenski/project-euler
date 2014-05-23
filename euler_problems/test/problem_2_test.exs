defmodule Problem_2Test do
  use ExUnit.Case

  test "the truth" do
    assert Problem_2.Naive.solution(4000000) == 4613732
  end
end
