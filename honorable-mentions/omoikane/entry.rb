 t=%w{x=[];if@!STDIN.tty?;STDINJ_line{|l|x.push(l)}Bif@x.size>0;b={};q=[d=0,
 0];p=[[0,0,0,0]];while@pL>0;i,j,u,v=p.shift;if@i>=0&&i<xL&&j>=0&&x[i][j]=="@"&
 &!b[[i,j]];b[[i,j]]=[u,v];n=(i<<16)+j;if@d<n;d=n;q=[i,j]      ;B[[-1,0],[1,0],
[0,-1],[0,1]]J{|m,n|p+=[[i+m,j+n,i,j]]}BBwhile@q!=[      0,0];x      [q[0]][q[1
]]='%';q=b[q];Bx[0][0]='%';$o=x;else;i=ARGV;z      =[i[0]&&i[0].to_i-      3||1
8,14].max;Z=[i[1]&&i[1].to_i-2||64,32].      max/16;z=(z-(z+2)%      4)/2  ;if@
i[2];sF@i[2].to_i;B$p={};$o=[];$q      ={};def@s(d,b);p=[      d,b];while  $p[p
]&&$p[p]!=p;p=$p[p]Breturn@      p;Bdef@y(d,i,b,q);      p=s(d,i);q=s(b,q  );if
@p!=q;$p[p]=$p[q]=[p,      q].min;if@d==b;4H{       |l|$o[d+l][i+8,2]="'@  @."[
l]*2}else;o=[d,      b].max;if$q[p]&&$q      [q];2H{|l|$o[o+l][i+2,6]="@"  *6};
else$o[o]      [i+4,2]="@,@"[(i%1      6/8)^(o%4/2),2];$o      [o+1][i+4,  2]="
@@"      BBBBI=(";@.;;;.@;;      '@;@';;;.@;@.;;@';      ;;'@  ';.@;@.;@@  ';;;
'@@  @@@'      @@@".split(//).map      {|l|l*        2})*"";(  z*2)H{|l|$  o+=[
I[l  %4*16,16]*      Z]};$o[0]=$o[0].gs      ub(/;;  @/,"@@@"  );$o[1]=$o  [1].
gsu  b(/;;;;''/,"..;;      ''");3H{|l|$o+=[I[        (l+4)*16  ,16]*Z]};$  oLH{
|l|      $o[l]+="@.'@"[l%4]      *2};zH{|l|(Z*2)H{|  i|p=[l*2  ,i*8];$p[p  ]=p}
};O=(Z*2)      *z+1;OH{if$qL<O*0.      4;i=F(z-5)*2  ;j=F(Z-2  )*16+(i%4<  2?16
:8);g=0;f=F(2)>      0?2:-2;while(g<1||      F(5)>0  )&&(p=j+  8*g)<Z*16-  24&&
(q=i+f*g)<z*2-7&&q>1&      &(0..2).all?{|l|!$        q[[q+l*2  ,p]]&&!$q[  [q+l
*2,p+8]]};g+=1;Bif@g>0;gH{|      l|3H{|u|[0,8]J{|v|$q[[i+l*f+  u*2,j+l*8+  v]]=
1;}}};h=F(2)*2-1;e=h*f<0;u=v=w=x=      nil;gH{|l|y(d=i+l*f+2-  2*h,b=j+l*  8,p=
d,q=b+8);y(m=d+(e@?-2*f:f),n=b+(e@?8:0)      ,r=m+f,s=n);if@u  ;y(u,v,d,b  );y(
w,x,m,n)Bu=p;v=q;w=r;x=s};y(u=e@?i+2:w,v=e@?j      :x+8,u-f,v  )BB};w      =[];
zH{|l|ZH{|i|y(q=l*2,p=i*16-l%2*8,q,p+($q[[q,p]]||$q      [[q,        p+8]]?0:8)
)};(1..Z*2-2)J{|i|w+=l>0?[[q=l*2,p=i*8,q-2,p]]:[]}};w=w.s      huffle;2H{|l|wJ{
|p,d,q,b|if(l<1||s(0,0)!=s(z*2-2,Z*16-8))&&!$q[[p,d]]&&!$q[[q,b]];y(p,d,q,b)B};
$q={}};y(-2,0,0,0);y(p=z*2,q=Z*16-8,p-2,q);B$oJ{|l|puts@l}}*"";7.times{|l|t=t
   .gsub((64+2*l).chr,([32.chr]+%w{end; D rand .times .each .size})[l])};eval t
