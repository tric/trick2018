> This is an example of remarks.markdown.
> You MUST include the following information:
>
> * Ruby implementation, version, platform that you use
>   (it is a good idea to copy and paste the output of ruby -v)
> * How to run
>
> Other sections are optional.
> You may change the section structure.
>
> You MUST NOT include anything that reveal your identity, e.g.,
> a signature, copyright, URL, etc.

### Remarks

実行方法

```console
$ ruby entry.rb
```

使用した Ruby 処理系およびバージョン、プラットフォーム

* ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin17] 

### Description

これはメソッド名を typo したときに did_you_mean が正しいメソッド名として挙げる候補をそのまま実行するプログラムです。


### Internals

> Write down anything interesting, such as:
>
> * the internals of the program,
> * the algorithms that the program uses,
> * how the program is obfuscated,
>
> etc.

```ruby
class Object
  Ex = Struct.new(:name, :receiver, :args)

  def method_missing(name, *args, &block)
    methods = DidYouMean::MethodNameChecker.new(Ex.new(name.to_s, self, [])).corrections

    if methods.empty?
      super
    else
      self.send(methods.first, *args, &block)
    end
  end
end
```

内部動作としては method_missing の中で DidYouMean::MethodNameChecker を使ってメソッド名の候補を取得しそれを実行しています。

### Limitation

> Write any limitations that the program has (if any), such as:
>
> * the program does not work in some platform,
> * the program does not work with some argument,
> * some expected features are not implemented,
> * the program has a known bug,
>
> etc.

did_you_mean が導入された 2.3 >= RUBY_VERSION を想定しています
