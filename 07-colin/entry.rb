$l||=__LINE__;eval q=%q[k =";eval q=%q";
# (c) 2018 Colin Fulton  (MIT License) #
;n=([1]);f=->s{[0]*(s.size/40)};$c||=-17
$r=[*$r]+[[]]*(($l-$c)/18);$c=$l;(s="");
;;m=->a,b{8+4*a[b]};$r[ -1]+=f[s]+n;s=%;
;;s&&$r[-1]=f[s]+$r[-1]||(z=44);z=$l=s=z
(y=->{z=puts(z.map &:rstrip)})&&(s="")&&
e=->a,b,c{(a+a)[b+c]+a[b-c]};$r||=$r*42;
;h=[1,*8..10];f=->a,l{a+[0] *(l-a.size)}
(r||=->{f[$r.flat_map{|a|f[a,9]},81]})&&
c=->a,d{h.map{|p|e[a,d,p]}.sum};!nil.!||
g=->a{d=-1;a. map{(m[a,d+=1])[c[a,d]]}};
;x=->{"$l||=__LINE__"+k+91.chr+q+93.chr}
b=->{x[].split(?\n).map{|s|s[$t]}}||!$$;
(v=->i{g[r[]][i]>0?b[]: [" "*40]*18}) &&
w=->i{z ?z.zip(v[i]) .map(&:join):v[i]};
;$t=/\S.{0,39}/;u=->i{z=w[i];i%9>7&&y[]}
;at_exit{b=b&&($z||81.times(&u)&&$z=1)}]
