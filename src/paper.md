---  
title: "Debugging"
subtitle: "What you should know as developer"
author: Ben Spoor
date: March 2, 2016  
lang: en
reference-section-title: References
bibliography: src/reference.bib
keywords: debugging
geometry: margin=2cm
---  

![Altran](bld/altran_logo.pdf "Altan logo"){ width=30% }


# Introduction
According to Google Scholar [@google2016], there are more than 10,000 articles that mention 'Debugging' in their title.
With such an amount of research on this topic, it is a pity it is still not adequatly addressed in programming texts [@mccauley2008debugging].
Research by Cambridge university shows developers spend around 50% of their time finding and fixing bugs [@britton2013reversible].
This paper presents the debugging basis to become more effective at it.

## You're probably non-structured debugger
If you are a novice, there is a good chance you are using non-structered methods to debug programs. [SOURCE]
Education currently lacks proper instruction of debugging. [SOURCE]
You might not even be a novice. [SOURCE]
Having a structured approach can greatly improve your ability to debug programs, troubleshoot problems or solve problems in general. [SOURCE]
People often mistake debugging for long sessions going on for days trying to hunt the bug from hell.
But debugging can also be as quick as 1 minute, when trying to find the source of a compilation error.

A majority of good debuggers are also good programmers, but not vice-versa. [SOURCE]

## What is debugging?
To understand debugging it is first essential to get some facts straight.

### What is a dependency chain?
Each piece of software (so independent of language) is just a large set of values that is changed by each statement.
This can be represented by a 2D matrix in which each row represents the programs state.
And the vertical axis represents time, so in time the program state is altered.
These alterations are done by statements, for instance if we have the following program:

    a = 2
    b = 4
    c = a + b
    print c

The entire execution of this program can be represented in the following manner,
in which the first column represents the points in time.


    | T | a | b | c |
    +---+---+---+---+
    | 0 | 2 | - | - |
    | 1 | 2 | 4 | - |
    | 2 | 2 | 4 | 6 |
    | 3 | 2 | 4 | 6 |

This table can be extended with arrows showing the dependecies between values.
Value c in this example is dependent on the values of a and b. 
Thus you can draw an arrow from a @ T=1 to c @ T=2 and also from b @ T=1.
If you do this for all values, you build what is called a dependency chain. 

![Dependecy chain](bld/dependency_chain.pdf "Chain of dependency"){ width=30% }

### Why should I call a bug a defect?
The famous story about the first bug in history about the moth caused this to be the term used.
But multiple people in history [source dijkstra] advocate for different namings.
Partly because it implies something magic happened and some strange behavior suddenly appeared.
But the main reason behing this is that bug has several meanings.
It can mean any of the following:

* Unexpected behavior seen by end user
* Typo in the source code
* Wrong value

We will follow zeller's [source] suggestions. Namely defects, infections and failures.
In our previous example if the value of c printed is not correct, the enduser will see the failure.
This is the bad/unexpected behavior at T=3. 
If the value of c is incorrect at T=3 because a is wrong at T=2, then c is infected by a.
If the value of a is wrong at T=0, this is the defect, because here it is set. 
In other words, because someone mistyped the value of a, it is set to a wrong value.
This in turn infects c and result in a failure at T=3. 

The term bug could apply to the failure of wrong c printed on screen, the wrong calculation of c
or the typo which lead to wrong value of a.

# What should you know ?
As a developer you should have a structured approach, a good mindset and knowledge about the problem.

## A structured approach
You should follow a high level process
Leave an audit trail (keep notes)
Quit thinking and look / Don't make assumptions / Trust nothing

## A good mindset
As a software engineer you are a lucky person, since it is the one area in which almost every hypothesis is testable.
So start with a positive aditude that you can measure, reproduce anything (there just ones and zeroes).


# Solution Details 
This explains how the service, technology, or business model works.
This is the heart of the white paper.
It provides very detailed descriptions of the proposed solution.
You can also use tables, charts, and graphics for this section, with cross-references to external supporting documents if required.

# A Structured approach

How should you debug structured then, well just follow the 5 step approach.

* Reproduce
* Simplify
* Isolate the problem
* Solve the problem
* Test the solution

A good rule of thumb presented by most authors is to fiddle around for 5-15 minutes with an unstructured approach.
But after that switch to a more structured approach.

## Reproduce the problem
One of the biggest challenges is getting the complete state clear of the program you are trying to debug.
If you can reproduce a problem consisttenly, you know when you fixed it as well.
A piece of software theoretically has a finite set of inputs.
Your job during this step is to describe all steps taken to reproduce the issue.
The best way is to automate this, since this makes your steps executable.
So write a (unit)test that reproduces the output. 
If this is not possible, try to automate as much as possible, to make sure it is repeatly showing the same behavior.

## Simplify
After you can reproduce the failure, try to remove every unnessecary step from the reproduction scenario.
Try to reproduce the issue with and without each input. This will focus you search.

## Isolate the problem


##### Start with the first problem
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
This was never stated anywhere.
Just pick up the block of frozen ice tea and place
it back in the other bucket. 
The lesson here is to never make an assumption and double check every fact. 

### Proof yourself wrong
One of the most powerfull techniques to cover a lot of ground is to always try to proof yourself wrong.
When you have an hypothesis of a problem, test or check if you can proof your hypothesis wrong.
It only takes 1 proof to kill an hypothesis, but an infinite amount to proof it right. 
This is the basis of the scientific method [@popper1959]
For example, all bugs always happen after a certain function is called. 
Try to reproduce the problem without calling that function.

### Don't throw out refute hypothesis
When a hypothesis proves to be wrong, also keep track of this.
The effort is not lost, a set of refuted hypothesis can lead to a correct one. [@araki1991]. 

### Strategies
Strategies here, are techniques to isolate the problem to its smallest reproducible form.

Strategies taken from Johson 1995 "Understanding troubleshooting styles to improbe training methods"

Troubleshooters use various strategies to identify faults dependent upon factors
such as;

* troubleshooter's level of expertise,
* type of system
* difficulty of the problem.

Johnson(1991) identified five common search strategies:

* trial and error
* exhaustive
* topographic
* half/split
* functional.

### Trial nd error
Trial and error is commonly used by novices. It is a random search rarely used by experts.
Lesgold et al. (1986) provided another version of this strategy called "swaptronics"
in which parts or subsystems known to be good, are inserted until one identifies
the correct area or component.

### Exhaustive
Exhaustive searches require little expertise, but are efficient only insituations where the component set is small.

### Topographic
Topographic searches are directed by tracing a schematic through the system identifying
a series of good/bad checks (Rasmussen & Jensen, 1974).
Two typesof topographic search strategies have been observed in troubleshooting activity based on the startingpoint of the search.
The first is starting at a known good point and working toward the fault (forward topographic), and the second is starting from the faulty condition (i.
., non-working lamp), andworking toward the input (reverse topographic) (Johnson et al. 1992).

### Half/split, binary, wolf fencing
The half/split, or binary searchmethod is an efficient means of reducing a problem space by checking for a proper condition at themiddle of the identified problem space.
If a proper condition exists a new reference point is selected in the middle of the remaining problem space.
The process is repeated until a single component remains.

### Functional
The functional method is the most difficult. Information about the system and its
components forms the basis of hypothesis selection (Johnson, 1991).
Various types of functional search exist as well. Basing a hypothesis on known 
system behavior and expected outcomes is the basic type of functional search.
Problem solvers can also construct a "runnable" mental model of the system in which the fault conditions are simulated (deKleer & Brown, 1981)

#### Swaptronics
This is the strategy of choice of novices [source].
(Randomly) swap out parts untill something makes it work. 
This has a very unstructered nature. effective?? [SOURCE]

#### Wolf fencing - How to catch a wolf in Alaska
This strategy might be the most important tool in the problem solvers toolbox.
You divide and conquer the problem.
From the highest, most abstract view of your program, split up your program into a few (<5) logical chunks.
Assert that when the information, or something, transitions from one chunk to another chunk, it is as expected.
At one of the transistions the information will be different than it should or is expected.
Take the chunk, repeat, untill you found the problem.

How do you catch a single wolf in Alaska? 
You build a fence, and listen and divide Alaska in two.
You listen on which side you hear the howling, and split up that half.
If you continue this long enough, you will catch the wolf.

## Solve the problem
Once you've found the problem, make sure your fix does not introdcue any new issues.
Your fix should should not fix the symptom, but the root cause.

## Test the solution


# Business Benefits 
This discusses the return on investments, usability, and adherence to standards. Customer quotes are always very helpful.
It demonstrates that you are an authority in your field and can back it up with these endorsements.
Don't take references for granted - not all your competitors will be able to supply such endorsements.

## Cost of debugging

## Effects of debugging knowledge

# Summary 
Close the paper with a concise summary of your main points.
As many readers will skip the entire document and read this section only, summarize the main selling points about your solution here.


