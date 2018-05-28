### Description

A maze generator inspired by trick art.

### Usage

Runs with no arguments and writes to stdout.

    ruby entry.rb

You can also specify up to three arguments to adjust maze size and
make the output reproducible:

    ruby entry.rb rows columns seed

* rows = maze height, default is 21.
* columns = maze width, default is 66.
* seed = random number generator seed, default is random seed.

Larger sizes tend to produce a better looking maze.  The program will
automatically adjust the sizes as appropriate.

To show solution to a maze, pipe the output to the same program
through stdin, for example:

    ruby entry.rb 40 130 20 | ruby entry.rb


### Internals

This program generates ASCII art with confusingly mixed isometric
projections, and then break down a subset of line segments to form a
maze.  All generated mazes are meant to be solvable, but not all rooms
are meant to be reachable.  Union-find algorithm is used to determine
rooms that are already reachable to minimize the number of holes in
walls.

For convenience, a maze solver is included, using simple breadth-first
search.  The program will try to run the solver if input is not a TTY
and is not empty.  To manually force the program to be maze generator
or solver, change `STDIN.tty?` at line 1 to `true` or `false`.


### Compatibility

Verified to work with these versions of Ruby:

* ruby 2.3.3p222 (2016-11-21) [x86\_64-linux-gnu]
* ruby 2.3.6p384 (2017-12-14 revision 9808) [x86\_64-cygwin]

Does NOT work with these older versions of Ruby:

* ruby 1.9.3p484 (2013-11-22 revision 43786) [i686-linux]
* ruby 2.1.5p273 (2014-11-13) [x86\_64-linux-gnu]
