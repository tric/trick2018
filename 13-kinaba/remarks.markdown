### Remarks

Just run it with no argument

    ruby entry.rb

then run it with warnings enabled:

    ruby -W entry.rb

I confirmed the following implementations/platforms:

* ruby 2.5.0p0 (2017-12-25 revision 61468) [x64-mingw32]


### Description

Basically it is a simple program that outputs

    TRICK2018

to stdout, but once the -W command line option is specified, it suddenly
becomes noisy. Behind the scenes, every line generated two warning messages,
one in parse/compile time and another in runtime. Since all the warnings are
different, the program is a kind of catalogue of 20 different ways to be
scolded by MRI.


### Internals

The warning messages themselves should be self-descriptive on where are the
points. If they were not clear enough, perhaps it's a signal for possible
candidates of improving the warning messages :).
