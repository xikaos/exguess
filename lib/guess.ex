defmodule Chop do
  #Function heads are nasty
  def guess(x, range)

  #Stop recursion. x is returned to make tests work properly.
  def guess(x, x..x) do
    IO.puts("The number you want is #{x}!!!")
    x
  end

  #Guess is more than x
  def guess(x, a..b) when
    div(a + b, 2) > x do 
      IO.puts("Is it #{div(a + b, 2)}?")
      guess(x,a..(div(a + b, 2) - 1))
  end

  #Guess is less than x
  def guess(x, a..b) when
    div(a + b, 2) < x do
      IO.puts("Is it #{div(a + b, 2)}?")
      guess(x, (div(a + b, 2) + 1)..b)
  end
  
end
