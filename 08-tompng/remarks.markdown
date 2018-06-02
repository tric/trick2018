### Remarks

    ruby entry.rb
    ruby entry.rb sample.bf > out.rb && ruby out.rb
    ruby entry.rb ">-<+[,.]" > out.rb && ruby out.rb

I confirmed the following implementations/platforms:

* ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-darwin16]
* ruby 2.0.0p648 (2015-12-16 revision 53162) [universal.x86_64-darwin16]

### Description

このプログラムは、コマンドライン引数でBrainf*ckのコードもしくはファイルを受け取り、実行可能なアスキーアートに変換するプログラムです。

`ruby entry.rb file_or_code > out.rb` によって変換されたout.rbは
  - Brainf*ckコードのアスキーアート `cat out.rb`
  - Brainf*ckのコードをrubyに変換したもの `ruby out.rb`
  - entry.rbと同じ機能を持つ、Brainf*ckをrubyに変換できるコンパイラ `ruby out.rb file_or_code > out2.rb`
です。
entry.rb自体、Brainf*ckのコード `.` をこのプログラム自身でrubyに変換したものです。
なので、`ruby entry.rb .` はentry.rb自身を出力するQuineになり、
コマンドライン引数なしで `ruby entry.rb` を実行すると、Brainf*ckの `.` が実行されNULL文字を一つ出力します。

変換されたアスキーアート中の同種のBrainf*ckの記号は全て同じ文字の組みからなっています。
(`ruby entry.rb "<<"` などで全く同じ文字列が左右に並んでいることから確かめられます)
なので、各記号のアスキーアートはrubyでBrainf*ckを書くための部品になります。
entry.rbを用いて変換しなくても、各記号のアスキーアートを部品としてコピペしてエディタで並べるだけで、Brainf*ckのコードが実行可能なrubyのコードになります。
