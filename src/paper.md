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
There is trouble shooting and problem solving, problems cause trouble. 
You can reduce the trouble, but to prevent trouble, solve the problem.
Debugging is thus problem solving.



![Dependecy chain](bld/dependency_chain.pdf "Chain of dependency"){ width=30% }

# What should you know ?
As a developer you should have a structured approach, a good mindset and knowledge about the problem.
<describe high level solution>

## A structures approach


## A good mindset


# Solution Details 
This explains how the service, technology, or business model works.
This is the heart of the white paper.
It provides very detailed descriptions of the proposed solution.
You can also use tables, charts, and graphics for this section, with cross-references to external supporting documents if required.

### 5 step debugging process

* Reproduce
* Collect clues
* Isolate the problem
* Solve the problem
* Test the solution

#### Reproduce the problem
One of the biggest challenges is getting the complete state clear of the program you are trying to debug.
If you can reproduce a problem consisttenly, you know when you fixed it as well.

#### Collect clues
Collecting clues gives you a first description of the problem. 

#### Isolate the problem

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


