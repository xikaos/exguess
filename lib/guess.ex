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
  def guess(x, _, actual) when actual == x do
    IO.puts("The f*ckin number you are thinking is #{actual}!!!") 
  end

  #After looking up Dave Thomas solution in the forums, I figured that there is a very simple way
  #of checking if two parameters in a function are the same. I did the way I did above because
  #probably I was thinking in conditionals and forgot about what the match operator can do.
  #I'll put Dave clause here because it was really mindblowing for me.
  #def guess(x, _, x), do: IO.puts("The number you are thinking is #{x}!!!")

  #This function clause should be called only if the other ones are not called, which means:
  # ~> the value of `actual` is different from the value of `x`
  #This implies in pattern matching the arguments passed and seeing if they fit. If they do, check if
  #the guard clause is evaluated to true, which means `actual` being less than `x`.
  #POST-MORTEM: First time I run this, It was like looping forever in two numbers.
  def guess(x, a..b, actual) when actual < x do
    diff = sum_helper(a,b)
    sum = actual + div_helper(diff)
    #sum = sum_helper(actual, div_helper(diff))

    IO.puts("Is it #{sum}?")

    guess(x, a..sum, sum)
  end

  #This function clause should be called only if the other ones are not, which means:
  # ~> the value of `actual` is different from the value of `x`
  # ~> the value of `actual` is less than `x`
  #It pattern matches the arguments passed by and if guard expression is evaluated to true, it means
  #that `actual` is bigger than `x`
  def guess(x, a..b, actual) when actual > x do
    diff = sum_helper(a,b)
    sum = actual - div_helper(diff)
    #sum = sum_helper(actual, div_helper(diff))

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


  #MAN, THIS LITTLE FUNCTION STOPPED THE NEGATIVE NUMBERS BEING GUESSED!!!
  #I was calculating the difference to use as a parameter to `div_helper` like: `b - a`, when the
  #correct way of doing it was to sum the two "edges" of the range and divide by two. I didn't knew
  #that till I looked Dave Thomas solution in the forums, but hey! I had a lot of problems in early
  #mathematics because of ADHD. Can you guys be comprehensive in this aspect, right?
  #I keeped my solution the way I designed It and it worked out. The problem with negative numbers
  #was bothering me so I lookup what people were doing in the internet ^^.
  def sum_helper(x,y), do: div(x + y,2)
end

#~> FINAL LESSON, BECAUSE ITS BEEN SOME TIME SINCE I WAS STUCK IN THAT EXERCISE! <~
# *Maybe I should avoid designing solutions in Elixir the way I think in OOP. That's fine.
# *Pattern matching was a way underestimated by my part in terms of power. Seriously, its crazy.
# *It worth to break your head solving this kind of problem. Look on others solutions when you have
#  to solve a bug or error, but give you the chance to really work on the main problem.
# * I'll write some more tests before I end this exercise, to well, exercise testing practices!