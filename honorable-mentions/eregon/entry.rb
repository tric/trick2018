          eval'i,s,S=     ARGF.read,[],/"          (?:\\\\         ["\\\\\        /bfnrtu
          ]|[^"\\\\])   *"/;while i[S];s<<      $`<<$&;i=$\';      end;s<<i       ;I=s.ea
          ch{|e|e.gsu  b!(/\s+/,"")if e[0]    !=?"}.join;G=/(?<    obj>\{(?:      \g<pair
          >(?:,\g<pai  r>)*)?\     }){0}(?   <pair>\g<str>:\g<va   l>){0}(?<a     ry>\[(?
            :\g<val    >(?:,\g              <val>)*)     ?\]){0}(  ?<val>-?(?:    0|[1-9]
            \d*)(?:    \.\d+)?              (?:[eE]       [+-]?\d  +)?|true|fal   se|null
            |\g<str     >|\g<ary>           |\g<obj       >){0}(?  <str>#{S}){0}  /;R,M=G
            .names.      map{|n|[n,/#{      G}\G\g<       #{n}>/]  }.to_h, G.to_s;C,Q,H,T
            =/(\\\\         ?[^()|g]*)/,    /(?:\(\       ?:)?/,/  \\\\g<(  \w+)>/,/\)\*\
)\?/;@i     ,L=0,->           s{@i+=s.tr(   "\\\\",       "").siz  e;nil};   def m(n)I.in
dex(R[n     ],@i) o                r retur  n;a=$&;       M[/\(\?  <#{n}>#    {C}#{Q}#{H}
#{Q}#{C}   #{H}#{T}                ?#{C}/]  ;if$2&&$     2==$4;L[  $1];a,k     =[],m($2);
a<<k if k;a<<m($2)w    hile I[     @i]==$3   &&@i+=1;L[$5];n=="o   bj"?a.t      o_h: a;el
 sif $2;[*L[$1],m(     $2),*L[$3],m($4)];e    lse M[/\(\?<#{n}>    .+?\{0\       }/].scan
   (H){|z,|z=m(z       )and return z};@i+       =a.size;eval"      null=ni        l;#{a}"
     ;end;end;          pp m("val")'.             gsub(/\s         \s++|\n         /x,'')
