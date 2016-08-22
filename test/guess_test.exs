require IEx
defmodule GuessTest do
  use ExUnit.Case
  doctest Guess

  test "It Guess.div_helper ~> Doesnt always succeed" do
    assert Guess.div_helper(0) != 1
  end

  test "It Guess.div_helper ~> works with 0" do
    assert Guess.div_helper(0) == 0
  end

  test "Guess.div_helper ~> It works with 1" do
    assert Guess.div_helper(1) == 1
  end

  test "Guess.div_helper ~> It works with 2" do
    assert Guess.div_helper(2) == 1
  end

  test "Guess.div_helper ~> It works with 3" do
    assert Guess.div_helper(3) == 2
  end

  test "Guess.div_helper ~> It really works" do
    assert Guess.div_helper(1) == Guess.div_helper(2)
  end

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

  test "Guess.guess ~> It works with 13 between 0 and 20" do
    IEx.pry
    assert Guess.guess(13,0..20)
  end

end
