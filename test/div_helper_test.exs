defmodule DivHelperTest do
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

end