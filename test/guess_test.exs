require IEx
defmodule GuessTest do
  use ExUnit.Case
  doctest Chop

  test "It works with 0" do
    assert Chop.guess(0,0..23) == 0
  end

  test "It works with 1" do
    assert Chop.guess(1,1..34) == 1
  end

  #This test Is giving me a lesson on how to deal with frustration
  test "It works with 13" do
    assert Chop.guess(13,0..42) == 13
  end

end
