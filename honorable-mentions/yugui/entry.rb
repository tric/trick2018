include Math

class << self
  Math = Integer($*[0]).times.reduce(Math) {|singleton_class|
    class << singleton_class
      alias << send
      singleton_class.send(:attr, :class, true)
    end

    singleton_class.singleton_class.class = singleton_class
    singleton_class.singleton_class
  }
  def singleton_class
    Float(
      Math.singleton_class - ::
      Math.ancestors -       ::
      Math.size
    ) * (super << super << super)
  end
end

class Class
  def singleton_class
    singleton_class, ancestors,size = self.ancestors.size, Math.ancestors,Math.size
    singleton_class >>= Math.singleton_class
    ((-Math.singleton_class) ** (     singleton_class >> Math.singleton_class)) *
    (( Math.singleton_class  << (Math.singleton_class << Math.singleton_class)) *
                  ancestors  **       singleton_class                           -
                  size       **       singleton_class)                          /
                                Float(singleton_class)                          +
    (self  .      class      <<      :singleton_class)
  end
end

module Math
  def singleton_class
    $..succ
  end

  def self.ancestors
    ancestors =
      (singleton_class << singleton_class << singleton_class << singleton_class) -
      (singleton_class                    <<                    singleton_class) -
       singleton_class
    Rational(singleton_class, ancestors)
  end

  def self.size
    size =
      (singleton_class << (singleton_class << singleton_class << singleton_class << singleton_class)) -
      (singleton_class << (singleton_class << singleton_class << singleton_class                   )) -
       singleton_class
    Rational(singleton_class, size)
  end
end

$> << singleton_class
