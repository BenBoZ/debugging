
# You're probably non-structured debugger 
If you are a novice, there is a good chance you are using non-structered methods to debug programs. [SOURCE]
Education currently lacks proper instruction of debugging. You might not even be a novice. [SOURCE]
Having a structured approach can greatly improve your ability to debug programs, troubleshoot problems or solve problems in general.
People often mistake debugging for long sessions going on for days trying to hunt the bug from hell.
But debugging can also be as quick as 1 minute, when trying to find the source of a compilation error.


There has been much research on the subject of debugging, problem solving and debugging.
This whitepaper aims to give you some practical approaches in solving problems.

A majority of good debuggers are also good programmers, but not vice-versa.

# 5 step debugging process

* Reproduce
* Collect clues
* Isolate the problem
* Solve the problem
* Test the solution

## Reproduce the problem
One of the biggest challenges is getting the complete state clear of the program you are trying to debug.
If you can reproduce a problem consisttenly, you know when you fixed it as well.

## Collect clues
Collecting clues gives you a first description of the problem. 

## Isolate the problem

### Start with the first problem
Usually bugs and problems don't come alone. They like to be together, but as always, there is usually one triggering all the problems.
Your program or deivce starts in a statewith known and good behavior, something happens and it ends in a unwanted state.

Happy place --> Transformation (including bug) --> (Unwanted) end state

### Define the problem
One of the most challenging parts of solving is problem, is solving the right problem.

### Don't make assumptions
A common mistake made is misrepresenting a problem [Psychology of problem solving].
For instance, I have two buckets; one half filled with ice tea and the other half filled with lemonade. 
Both the lemonade and the ice tea have equal densities. If I pour the lemonade in the bucket with ice tea.
The problem to be solved is that within 5 minutes the two drinks should be seperated again and be placed back in both buckets.

The most common assumption people make is that both are liquids. 
This was never stated anywhere. Just pick up the block of frozen ice tea and place
it back in the other bucket. 
The lesson here is to never make an assumption and double check every fact. 

### Proof yourself wrong
One of the most powerfull techniques to cover a lot of ground is to always try to proof yourself wrong.
When you have an hypothesis of a problem, test or check if you can proof your hypothesis wrong.
It only takes 1 proof to kill an hypothesis, but an infinite amount to proof it right.
For example, all bugs always happen after a certain function is called. 
Try to reproduce the problem without calling that function.

### Strategies
Strategies here, are techniques to isolate the problem to its smallest reproducible form.

#### Swaptronics
This is the strategy of choice of novices [source].
(Randomly) swap out parts untill something makes it work. 
This has a very unstructered nature. effective?? [SOURCE]

#### Wolf fencing
This strategy might be the most important tool in the problem solvers toolbox.
You divide and conquer the problem.
From the highest, most abstract view of your program, split up your program into a few (<5) logical chunks.
Assert that when the information, or something, transitions from one chunk to another chunk, it is as expected.
At one of the transistions the information will be different than it should or is expected.
Take the chunk, repeat, untill you found the problem.

## Solve the problem
Once you've found the problem, make sure your fix does not introdcue any new issues.
Your fix should should not fix the symptom, but the root cause.

## Test the solution


