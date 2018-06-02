### Remarks

To run, create a file using the code in `entry.rb` as the basic block. You can then fill that text file with a 9 by 9 grid of either that basic block or an equally sized block of spaces. As a simplified example, imagine that the code in `entry.rb` was just the following:

```
QUINE
LIFE#
```

You would fill your file with something like this:

```
QUINE     QUINE     QUINE     QUINE     QUINE
LIFE#     LIFE#     LIFE#     LIFE#     LIFE#
     QUINE     QUINE     QUINE     QUINE
     LIFE#     LIFE#     LIFE#     LIFE#
QUINE     QUINE     QUINE     QUINE     QUINE
LIFE#     LIFE#     LIFE#     LIFE#     LIFE#
     QUINE     QUINE     QUINE     QUINE
     LIFE#     LIFE#     LIFE#     LIFE#
QUINE     QUINE     QUINE     QUINE     QUINE
LIFE#     LIFE#     LIFE#     LIFE#     LIFE#
     QUINE     QUINE     QUINE     QUINE
     LIFE#     LIFE#     LIFE#     LIFE#
QUINE     QUINE     QUINE     QUINE     QUINE
LIFE#     LIFE#     LIFE#     LIFE#     LIFE#
     QUINE     QUINE     QUINE     QUINE
     LIFE#     LIFE#     LIFE#     LIFE#
QUINE     QUINE     QUINE     QUINE     QUINE
LIFE#     LIFE#     LIFE#     LIFE#     LIFE#
```

Or this:

```
          QUINE
          LIFE#
QUINE     QUINE
LIFE#     LIFE#
     QUINEQUINE
     LIFE#LIFE#








                                   QUINEQUINE
                                   LIFE#LIFE#
                                   QUINEQUINE
                                   LIFE#LIFE#
```

Or this:

```
     QUINE
     LIFE#
     QUINE
     LIFE#
     QUINE
     LIFE#
```

`demo.rb` contains an encoding of the classic "glider" shape as an runnable example.

You can then run you program as follows:

```
ruby name_of_your_file.rb
```

Setup you terminal to be 361 characters high by 163 columns wide to view the result properly.

You can then run the resulting code that printed to standard out to see the next step of the pattern. To automatically run your program, print the result to standard out, then run the next step, print it out, etc, you can run this bit of `bash` code on the command line:

```
while true; do ruby name_of_your_file.rb > next.rb; cat next.rb; sleep 1; clear; cp next.rb name_of_your_file.rb; done
```

Note: not all patterns have next steps. Some will result in blank screens.

It has been tested with the following Ruby versions:

* ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-darwin17]
* ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin15]


### Description

This program runs Conway's Game of Life in a 9 by 9 grid as a quine. The edges of the grid wrap with a slightly twisted toroidal geometry.

The source code is used to represent cells that are "alive", while a block of spaces that is the same size is used to represent a cell that is "dead".

### Internals

The core block of code looks at what line it is on, and how much whitespace there is between two lines to figure out how many times it is repeated, and where it is located in the grid.

At this core of this program is the following very small implementation of the Game of Life which I did for a code golf challenge:

```
loop{d=-sleep(1);p b=b.map{(8+4*b[d+=1])[[1,8,9,10].map{|p|(b+b)[d+p]+b[d-p]}.sum]}}
```

The expression `8+4*b[d+=1]` is the part that encodes the rules of the Game of Life. `b[d+=1]` is used to check whether the current cell is "alive" (`1`) or "dead" (`0`). This number, times 4 plus 8 gives an integer that encodes the rules for that cell. Example: If the current cell is "alive" you get `8+4*1=12`. Let's say that 4 of this cell's neighbors are also "alive". The 4th bit of 12 is 0, so this cell will be "dead" in the next step. However, if the cell had 3 or 2 neighbors that were "alive", the 2nd and 3rd bits of 12 are 1, so this cell would be "alive" in the next step.

This tiny version can be run like this in a terminal window that is 27 characters wide and 9 lines high like this (edit the `b` array to setup different initial conditions):

```
ruby -e "b=[
0,1,0,0,0,0,0,0,0,
0,0,1,0,0,0,0,0,0,
1,1,1,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0]" -e "
loop{d=-sleep(1);p b=b.map{(8+4*b[d+=1])[[1,8,9,10].map{|p|(b+b)[d+p]+b[d-p]}.sum]}}
"
```
