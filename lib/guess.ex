#I'm thinking in a number between 1 and 1000...
#Chop.guess(273, 1..1000)
#Is it 500?
#Is it 250?
#Is it 375?
#Is it 312?
# and so on...

require IEx

defmodule Guess do

  #Bodyless function to pass the default value of `actual` to 0. It also defines the argument name for
  # the range in which to look for the nunmber you want.
  def guess(x, range, actual \\ 0)

  #This should be the clause to stop recursion. The arguments get matched and then if the 
  #guard clause is evaluated to true (implies in our stop condition being fulfilled), it prints 
  #the value of `actual` which is equal do `x`.
  def guess(x, a..b, actual) when actual == x do
    IO.puts("The f*ckin number you are thinking is #{actual}!!!") 
  end

  #This function clause should be called only if the other ones are not called, which means:
  # ~> the value of `actual` is different from the value of `x`
  #This implies in pattern matching the arguments passed and seeing if they fit. If they do, check if
  #the guard clause is evaluated to true, which implies in `actual` being less than `x`.
  #POST-MORTEM: First time I run this, It was 
  def guess(x, a..b, actual) when actual < x do
    diff = b - a
    sum = actual + div_helper(diff)

    IO.puts("Is it #{sum}?")

    guess(x, sum..b, sum)
  end

  #This function clause should be called only if the other ones are not called, which means:
  # ~> the value of `actual` is different from the value of `x`
  # ~> the value of `actual` is less than `x`
  #It pattern matches the arguments passed by and if guard expression is evaluated to true, it means
  #that actual is bigger than x
  def guess(x, a..b, actual) when actual > x do
    diff = b - a
    range = actual..b
    sum = actual - div_helper(diff)

    IO.puts("Is it #{sum}?")

    guess(x, sum..b, sum)
  end

  #Helper method to abstract the handling of non multiples of 2. It sums one to the integer passed
  #via parameter and then calls the function again. 
  def div_helper(0), do: 0

  def div_helper(num) when rem(num,2) != 0 do
    sum = num + 1
    div_helper(sum)
  end

  def div_helper(num) do   
    div(num,2)
  end 

end

Guess.guess(1,0..15)