### Remarks

Just run it with no argument:

    ruby entry.rb

I confirmed the following implementations/platforms:

* ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin16]
* ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-darwin16]
* ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-darwin16]

### Description

3D Christmas Tree

### Internals

The shape of the christmas tree is compressed into a single proc.
```ruby
f=->(x,y,z){takes float x, y, z and returns float}
# A set of points that satisfies f.call(x,y,z)==0 is the christmas tree
```
