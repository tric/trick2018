# IRB

### Remarks

Run the program with

    ruby entry.rb

which will fire up an interactive Ruby shell (IRB). When you are done Rubying, you can exit
it with EOF or `exit!`

### Implementations

- Requires Ruby 2.5. Tested on `ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-linux]`.

### Features

- The IRB supports multiline input, including `=begin..=end` comments and heredocs
- Just paste the IRB anywhere to have to start it with the current binding (like `binding.irb`)
  - Tip: One way to test variable definitions *below* the IRB is by wrapping them within
    a `BEGIN {}` block
- Errors in the IRB will be printed directly
- No libraries and no single quotes are used, so you can directly pass it to `ruby -e '…'`
  on the command-line
- Unformatted, it fits into a tweet (which is currently defined to be <= 280 characters). After
  removing terminal color, it even fits into an old-style-140-chars tweet.

### Limitation

- The multiline support is not perfect (on the other hand, neither is standard library's),
- The program uses/leaks the following local variables:
  `_` (the multiline buffer) and `__` (the binding)
- `Kernel#exit` does not work, because SystemErrors get caught
- No convenience features like history, readline, profile files, …

### Internals

- The multiline mechansim works by catching errors and filtering the ones that complain about
  incomplete code. Simple, but efficient!
- Uses the `eval` + `%w[]` + nospaces + `join` technique for fancy formatting
- The following codegolf practices were used:
  - Dirty interpolation (`"#$!"`)
  - `$><<` instead of `print`
  - `"%p"%object` instead of `object.inspect`
  - `string<$/` instead of `string!=""`

