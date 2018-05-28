### Remarks

Run it with the number of iterations:

  ruby entry.rb 20

I confirmed the following implementations/platforms:

* ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin17]
* ruby 2.4.3p205 (2017-12-14 revision 61247) [x86_64-darwin17]
* rubinius 3.84 (2.3.1 3970f17d 2017-08-02 5.0.1) [x86_64-darwin17.3.0]

### Description

This program calculates an approximation of PI.

### Internals

* It calculates the approximation with the Machin's formula:
    
  ```math
  \pi \approx 4 \sum_{i=0}^n (-1)^i (4 / 5^{2i+1} - 1 / 239^{2i+1}) / (2i+1)
  ```

* It maps the arithmetic sequence `2i+1` in the formula to a depth of
  metaclass hierarchy. Then lets the high-order metaclasses recursively calculates
  the summation.
  Since the `i`-th order metaclass of `Math` has `4i+2` ancestors, `ancestors.size >> 1` gives the term we want.

* It also illustrates Ruby's flexibility of constant, method and variable lookup.
  * The key part of the algorithm is the overloaded `singleton_class` method in the metaclass hierarchy of `::Math`.
  * For further obfuscation, names of other constants, methods, and variables are same as the names in the key part.
    Those symbols are carefully defined in the right scope to avoid collisions in symbol lookup.
  * There are four kinds of `<<` in the program.
    * The singleton class expression: `class << obj`.
    * Bitwise shift
    * Output to IO stream
    * An alias of `send`
  * There are five kinds of `singleton_class`.
    * The default `Kernel#singleton_class`
    * The implementation of the formula: `Class#singleton_class` and `main.singleton_class`.
    * The helper method which returns 1: `Math#singleton_class`.
    * block parameters
    * local variables
  * There are two kinds of `Math`.
    * The standard `Kernel::Math`
    * The high-order metaclass of `Kernel::Math`

### Limitation

This program relies on several assumptions:
* Given a class `C` and its subclass `D`, the metaclass of `D` is always a subclass of the metaclass of `C`, unlike in MRI 1.8 or earlier.
* Compile-time optimizations do not prevent runtime overrides of methods.
