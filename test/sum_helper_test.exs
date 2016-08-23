defmodule SumHelperTest do
  use ExUnit.Case
  doctest Guess

  test "Guess.sum_helper ~> Doesnt always succeed" do
    assert Guess.sum_helper(0,1) != 2
  end

  test "Guess.sum_helper ~> It works with 0 and 1" do
    assert Guess.sum_helper(0,1) == 1
  end

  test "Guess.sum_helper ~> It works with 1 and 2" do
    assert Guess.sum_helper(1,2) == 1
  end

  test "Guess.sum_helper ~> It works with 3 and 7" do
    assert Guess.sum_helper(3,7) == 4
  end

  test "Guess.sum_helper ~> It works with 14 and 33" do
    assert Guess.sum_helper(33,14) == 19
  end
  
end