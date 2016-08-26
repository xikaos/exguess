# Guess

**It is an exercise from Programming Elixir 1.2 by Dave Thomas.**

## Objetive

The exercise objetive was to use the concepts learned in the book so far (multi clause functions, default params, guard clauses, etc ...).

The API has to be something like that:
```
I'm thinking in a number between 1 and 1000...

Chop.guess(273, 1..1000)

Is it 500?

Is it 250?

Is it 375?

Is it 312?
...
```
and so on...

 
I commented a lot of the things I've done in `lib/guess.ex` and It took me quite some time to finally give myself satisfied about the solution.

##Learning experience

I ended up with a bug caused by calculating differences with subtraction (which basically is the operation that, in my view, is the actual deffinition of "difference"), which resulted in negative integers being guessed by the function.

After almost giving up this exercise, I looked up in the foruns and see that the author used a lot of concepts that were not teached in the book so far such as private functions and other nifty things, but hey, **WE DID IT!!!**

The correct way of calculating the difference between the minimum-maximum numbers of the range was to sum them and them divide by two. It was not obvious for me, maybe because I had major problems in early school mathematics? Dunno. 

## It worth.

Yes.

It think it worth.

I bashed my head, and this is will be a interesting piece to look after when I'll improve in the language.

So far, I'm loving it <3.
