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


I actually had a lot of problems in this exercise and do not lookup on others solutions, so currently I'm trying to fix a bug which is cause by calls like these:

```
Guess.guess(1,0..15)
```

The output happens to be:

```
Is it 8?
Is it 4?
Is it -2?
Is it 7?
Is it 3?
Is it -3?
Is it 6?
Is it 1?
The f*ckin number you are thinking is 1!!!
```

##Bug fixed!
It was fixed thanks to me realizing I needed to check when one operand was bigger than the other and then inverse their precedence.

