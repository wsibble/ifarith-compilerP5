# Discussion and Reflection

The bulk of this project consists of a collection of five questions. You are to answer these questions after spending some amount of time looking over the code together to gather answers for your questions. Try to seriously dig into the project together—it is of course understood that you may not grasp every detail, but put forth serious effort to spend several hours reading and discussing the code, along with anything you have taken from it.

Questions will largely be graded on completion and maturity, but the instructors do reserve the right to take off for technical inaccuracies (i.e., if you say something factually wrong).

Each of these (six, five main followed by last) questions should take roughly at least a paragraph or two. Try to aim for between 1-500 words per question. You may divide up the work, but each of you should collectively read and agree to each other's answers.


[ Question 1 ] 

For this task, you will create three new .irv programs. These are ir-virtual? programs in a pseudo-assembly format. Try to compile the program. Here, you should briefly explain the purpose of ir-virtual, especially how it is different than x86: what are the pros and cons of using ir-virtual as a representation? You can get the compiler to compile ir-virtual files like so:

racket compiler.rkt -v test-programs/sum1.irv 

(Also pass in -m for Mac)

Ir-virtual is a coding architecture used with compilers in software development. The purpose of ir-virtual making a pseudocode that can be easily translated to machine code. Ir-virtual has a more defined structure as opposed to x86 which leads to pros of using ir-virtual as a representation. Ir-virtual allows for easier adaptation to different hardwares, like x86 and ARM, as it does not need to change any source code. Debugging in ir-virtual is considerably  straightforward which makes for easier testing with the debugging.
Ir-virtual defined structure comes with some cons. This is as ir-virtual has more strict instruction calls which can limit more advanced capabilities that other architectures have. Ir-virtual’s efficiency also depends on the compiler and its ability to convert to machine level. Overall, for  ir-virtual the pro’s and con’s are connected to each other as ir-virtual structure leads it to be easier to adapt but may limit its capabilities too.
Source




Sum2.irv, output 7
(mov-lit r3 3)
(mov-lit r4 4)
(mov-lit r5 1)
(mul r5 r3)
(add r5 r4)
(print r5)


Mult.irv, output 300
((mov-lit r7 3)
(mov-lit r9 99)
(mov-lit r1 1)
(add r9 r1)
(mult r5 r9)
(print r9))


Zero1.irv, output 0

((mov-lit r5 0)
(mov-lit r9 0)
(mov-lit r10 10)
(add r5 r10)
(print r9))




[ Question 2 ] 

For this task, you will write three new .ifa programs. Your programs must be correct, in the sense that they are valid. There are a set of starter programs in the test-programs directory now. Your job is to create three new .ifa programs and compile and run each of them. It is very much possible that the compiler will be broken: part of your exercise is identifying if you can find any possible bugs in the compiler.

For each of your exercises, write here what the input and output was from the compiler. Read through each of the phases, by passing in the -v flag to the compiler. For at least one of the programs, explain carefully the relevance of each of the intermediate representations.

For this question, please add your .ifa programs either (a) here or (b) to the repo and write where they are in this file.


Outputs for all three files can be found in the GitHub repository.

Arith3.ifa
(let* ([x (+ 8 2)]
      [x (- x 7)]
       [z (* x 2)]
       [w (* 2 5)] 
       [y (+ (* z x) (* w 100))] 
       )
  (print y))


1.) Shows the inputted high level language
2.) Shows the simplified code with the ands/ors/if simplifies into more barebones
3.) Shows the lambda calculus implementation using let and simplifying it to single instructions 
4.) Shows the virtual commands of each instruction
5.) Shows the assembly converted virtual instructions
6.) Returns to you the .asm file of the conversion


Bop1.ifa
(let* ([x (* 89 3)]
       [z (+ (* 4 x) (+ x 9))])
  (print (* x (- x z))))


Cond2.ifa
(cond [(- 2 (* 3 3)) (print 1)]
      [(+ 9 8) (print 8)]
      [(-(+ (+ 9 8) 100) 2) (print 8)]
      [(* 9 (- 6 -23)) (print 9)]
      [else (print 7)])




[ Question 3 ] 

Describe each of the passes of the compiler in a slight degree of detail, using specific examples to discuss what each pass does. The compiler is designed in a series of layers, with each higher-level IR desugaring to a lower-level IR until ultimately arriving at x86-64 assembler. Do you think there are any redundant passes? Do you think there could be more?

In answering this question, you must use specific examples that you got from running the compiler and generating an output.

Many compiler passes go into and input and output for this project and in general. First is tha ifarith pass, this pass checks to make sure the initial input in the high level language fits the syntax provided everything as 0 is true and 0 is false will show false with 0 by using subtraction. Next is ifarith tiny, this pass desugars the high level language as it uses the implementation of lambda calculus to represent the high level instructions. The first step of simplifying and/or/if can all be represented with if and the let* can be represented using single binding lets. Next is anif, this pass decomposes simple instructions into let bindings. These are to be further simplified  into just a series of lets. This allows for the user to do one instruction at a time as they have to as you may only do one instruction at a time in assembly. Next is ir-virtual, this converts these single instruction commands into a virtual assembly language. This organizes all the instructions becoming more of a pseudo code assembly giving each command a register and instruction. Next pass is x86, this converts the virtual instructions into actual instructions and gives it the form of assembly. Now it can be handed off to  the last pass of NASM where it takes and forms the code compiled into a file.



[ Question 4 ] 

This is a larger project, compared to our previous projects. This project uses a large combination of idioms: tail recursion, folds, etc. Discuss a few programming idioms that you can identify in the project that we discussed in class this semester. There is no specific definition of what an idiom is: think carefully about whether you see any pattern in this code that resonates with you from earlier in the semester.

Universal Idioms:
Map
Map is an idiom we have identified in this project. This is because map applies the procedure to the elements of the list from the first to the last. The concept of mapping is found in many other programming languages and is even a call in some. For example, python contains the call map to also apply functions to an array of values. In java, the same can be done with a list of ints. 

Match
Match is another idiom we have identified in this project. This is because match evaluates to find matching conditions. This concept and behavior is found in other languages and even as a call. For example, in python a match statement checks through different cases for a match to execute corresponding code. In java, the same behavior is done with a switch statement.

Class oriented idioms:
In this compiler the use of let to simplify the code in every way and the use of lambda calculus and a common idiom within this class. The idea of assigning variables to environments and pulling them using hashes to keep track of things is also another common idiom used to solve many of the problems in class. The idea of an environment is a very applicable idea that sussed even outside of the class in the idea of trees and multidimensional arrays, using these ideas and simplification is an excellent way to universally solve problems within the tech community.


[ Question 5 ] 

In this question, you will play the role of bug finder. I would like you to be creative, adversarial, and exploratory. Spend an hour or two looking throughout the code and try to break it. Try to see if you can identify a buggy program: a program that should work, but does not. This could either be that the compiler crashes, or it could be that it produces code which will not assemble. Last, even if the code assembles and links, its behavior could be incorrect.

To answer this question, I want you to summarize your discussion, experiences, and findings by adversarily breaking the compiler. If there is something you think should work (but does not), feel free to ask me.

Your team will receive a small bonus for being the first team to report a unique bug (unique determined by me).


Below is a bug in our created sum2.irv file, referenced in question 1:

Sum2.irv, wrong
(mov-lit r3 3)
(mov-lit r4 4)
(mul r5 r3)
(add r4 1)
(print r5)

The above results in an error, mainly due to the line containing (add r4 1) because in assembly languages, data contained in a register can not be added to a constant value. For us to get our intended output of 7, we must only add contents from one register to another. Below is a proper example of adding these values.

Sum2.irv, output 7
(mov-lit r3 3)
(mov-lit r4 4)
(mov-lit r5 1)
(mul r5 r3)
(add r5 r4)
(print r5)






[ High Level Reflection ] 

In roughly 100-500 words, write a summary of your findings in working on this project: what did you learn, what did you find interesting, what did you find challenging? As you progress in your career, it will be increasingly important to have technical conversations about the nuts and bolts of code. Try to use this experience as a way to think about how you would approach doing group code critique. What would you do differently next time, what did you learn?

After working on this project, we learned about how compilers work and how the code is translated to different structures to create an output. As for what we found interesting, this was with the compilers. It was interesting to see how many steps are needed to make a compiler work efficiently and correctly. In addition, breaking down the compiler outputs from different test cases was interesting to see the changes in outputs and behavior. As for the challenges, we found it challenging to find bugs, partially because our debugging process was not as thorough as it should have. As referenced in question four, only one bug regarding assembly arithmetic was found as of yet.As for what we would do differently next time, we think writing more test cases files to test the code behavior in more depth would help us understand the simpler faster and better overall. Besides that, there is not much we would change about this assignment as we were able to take a lot away from it overall to help us in future coding problems.
