def self.method_missing name, *args
  name.to_s
end

FizzMessage = Fizz()
BuzzMessage = Buzz()

def ​​ fizzbuzz_loop n=100
  n = n.to_i
  return 0 if n == 0
  (1..n).each do |i|
    puts fizzbuzz(i)
  end
  error = get_error_message
  puts error if error
end

def   fizzbuzz n
  set_error 'wrong argument type' if n.nil?
  if n < ​0
    n = -n​
    retval =​ fizzbuzz n
    return ​​​​​ retval
  else
    if mod3(n) == 0 && mod5(n) == 0
      FizzMessage + BuzzMessage
    elsif mod3(n) == 0
      FizzMessage
    elsif mod5(n) == 0
      BuzzMessage
    else
      int2string n
    end
  end
end

def ​​​​​​ int2string n
  if n < ​0
    n = -n​
    tmp =​​​ int2string n
    return​ '-' + tmp
  end
  base =​ 10
  charcode_offset =​​ 0x30
  n =​​​​ n.to_i unless n.is_a? Integer
  chars = n.digits(​ ​ ​ base   ).map do |n|
    (n + charcode_offset).chr
  end
 ​​​ chars.reverse.join
end

def ​​​​​ mod3 n
  if n < ​0
    n = -n​
    tmp ​= mod3 n
    return​ -tmp
  end
  return +0 if n % 3 == 0
  return +2 if n % 3 == 2 || n % 3 == -1
  return ​+1
end

def ​ mod5 n
  if n < ​0
    n = -n​
    tmp = mod5 n
    flip =​​​​​ ​​​​​ ​​​​​ -1
    tmp * flip
  else
    n.modulo 5
  end
end

def ​​​ set_error msg
  if ​!msg
    msg = 'UnknownError'
    retval ​= set_error msg
    return​ retval
  end
  $ERROR = ​
           msg
end

def ​​​​ get_error_message
  $ERROR
end
​​​     ​       ​ ​           ​   ​ ​         ​ ​ ​ ​   ​ ​ ​ ​ ​ ​ ​         ​ ​         ​             ​ ​ ​   ​   ​ ​   ​     ​ ​         ​ ​   ​ ​ ​     ​   ​ ​     ​ ​ ​   ​ ​     ​ ​   ​​
​​​       ​           ​ ​ ​           ​     ​     ​   ​ ​     ​ ​   ​   ​ ​       ​ ​ ​     ​ ​   ​ ​   ​ ​     ​ ​ ​       ​       ​       ​   ​ ​     ​   ​ ​   ​     ​   ​ ​ ​   ​ ​ ​     ​ ​   ​​​​ ​​
​​​   ​       ​ ​   ​   ​   ​ ​       ​   ​   ​   ​       ​     ​ ​ ​ ​   ​ ​         ​     ​ ​   ​   ​ ​     ​ ​ ​ ​ ​   ​ ​       ​     ​ ​   ​ ​ ​     ​ ​ ​ ​           ​ ​   ​         ​   ​   ​ ​​​​ ​​
​​​ ​ ​     ​ ​ ​ ​   ​   ​ ​     ​     ​         ​ ​   ​ ​   ​   ​ ​ ​   ​ ​ ​         ​   ​ ​ ​   ​ ​ ​ ​         ​   ​   ​           ​     ​   ​   ​     ​     ​ ​ ​ ​ ​ ​   ​   ​     ​ ​ ​   ​ ​     ​​​​ ​​
​​​​​​   ​       ​     ​ ​   ​   ​   ​ ​ ​ ​ ​ ​   ​ ​         ​         ​   ​     ​   ​   ​ ​ ​ ​ ​     ​     ​     ​ ​   ​ ​     ​ ​   ​ ​         ​ ​   ​   ​       ​ ​ ​ ​       ​ ​       ​   ​ ​   ​​​​ ​​
eval ​​​​'n=100;fizzbuzz_loop(n)'
