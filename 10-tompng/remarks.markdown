### Remarks

Just run it with no argument:

    ruby entry.rb

I confirmed the following implementations/platforms:

* ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin16]
* ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin16]

### Description

This program looks like a fizzbuzz, and is actually a fizzbuzz.
(but with a different message Fizz→Ruby and Buzz→Trick)

### Internals

This program consists of data part and decoder part.
In the data part, the real code `(1..100).map{|i|puts [*[:Ruby][i%3],*[:Trick][i%5],nil,i][0,2]*''}` is encoded into non-ascii spaces(U+00A0 and U+200B).
The decoder part is camouflaged as a fizzbuzz code using non-ascii spaces.

```ruby
# camouflage example:
def ​​ fizzbuzz_loop n=100; end
# it looks like a definition of method fizzbuzz_loop with argument n
def fizzbuzz_loop(n=100); end
# but it's a definition of method "\u200B\u200B" with argument "fizzbuzz_loop\u00A0n"
def □□(fizzbuzz_loop＿n=100); end
```

This program will be a normal fizzbuzz if you remove all of the non-ascii spaces.
`ruby -npe "\$_.gsub!(/\u00A0|\u200B/,' ')" < entry.rb | ruby`
