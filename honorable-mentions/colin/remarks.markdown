### Remarks

Just run it with no argument:

    ruby entry.rb

This program relies on OSX's `say` command. While there are implementations of this command available for other operating systems, I've never confirmed that they work this this program.

If you have a Mac from a non-English speaking country you might have to change the default voice by adding ` -v alex ` after `say` in the program.

It has been tested with the following Ruby versions:

* ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-darwin17]
* ruby 2.0.0p0 (2013-02-24 revision 39474) [x86_64-darwin15.3.0]


### Description

This program plays the minimalist piece ["Clapping Music" by Steve Reich (c) 1972](https://youtu.be/liYkRarIDfo). It takes about 6 minutes to play the entire piece.

"Clapping Music" is a percussion piece with two parts. At the start, each part claps the same 12 beat pattern. After repeating that pattern 12 times, part 1 remains the same while part 2 shifts the pattern, over by one beat. This is repeated until both parts are in sync again.

### Internals

The say command is used at a very high speaking rate so it sounds like percussion. It is pronouncing the `@` character for one of the parts, and the `x` character for the other part. Commas and periods are used to represent rests since `say` pauses when reading those characters.

1872 is the number of beats in the piece. The number of each beat (♪) is used to index into a string (👏) which stores the basic pattern. Modular arithmetic is used the get the index for the second part, then the strings are concatenated together and `say` is called.

While writing this program I changed my philosophy; I used to think that single character variable names were never descriptive. With this program I learned that they can be if emoji are used.

### Limitation

To get the program this small the `say` command was used, which is only built into OSX.
