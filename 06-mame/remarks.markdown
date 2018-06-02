This entry is a sorting program.

    $ cat test.txt
    2 -- C
    3 -- A
    1 -- B

    $ ruby entry.rb test.txt
    1 -- B
    2 -- C
    3 -- A

By sorting the sorting program, you will get a reverse-sorting program.

    $ ruby entry.rb entry.rb > rsort.rb

    $ ruby rsort.rb test.txt
    3 -- A
    2 -- C
    1 -- B

By reverse-sorting the program, you will get a program that sorts by reversed lines.

    $ ruby rsort.rb rsort.rb > sortr.rb

    $ ruby sortr.rb test.txt
    3 -- A
    1 -- B
    2 -- C

By sorting the program by reversed lines, you will get a program that reverse-sorts by reversed lines.

    $ ruby sortr.rb sortr.rb > rsortr.rb

    $ ruby rsortr.rb test.txt
    2 -- C
    1 -- B
    3 -- A

By reverse-sorting the program by reversed lines, you will get the original sorting program.

    $ ruby rsortr.rb rsortr.rb > sort.rb

    $ ruby sort.rb test.txt
    1 -- B
    2 -- C
    3 -- A

    $ diff entry.rb sort.rb
