defmodule GuessTest do
  use ExUnit.Case
  doctest Guess


  test "It works with 0" do
    assert Guess.div_helper(0) == 0
  end

  test "It works with 1" do
    assert Guess.div_helper(1) == 1
  end

  test "It works with 2" do
    assert Guess.div_helper(2) == 1
  end

  test "It works with 3" do
    assert Guess.div_helper(3) == 2
  end

  test "It really works" do
    assert Guess.div_helper(1) == Guess.div_helper(2)
  end

end
