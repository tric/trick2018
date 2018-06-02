                           p,i,u,f,v,q    ,h,x=[],
                         Math,->x{i.sin x},->x,y,z{
                       x*=1.2;      r,a,m=(1   -y=y*1.4+0.15)/2+0.1,y+u[3*x+4*y+5*z*=1.2]  /12,x*
                     x+z*z;         l,s,b=     m**0.5,i.atan2(z,x),u[6*a]**2/36+((x*x+z*z)**0.5-r)**
                     2-(1-   a*      a)/2      /500;l-=   (1-y   )/8   *d=  (u[   2*s  +3*3*t   =1-y-
                    l/2]*    u[       3*       s-3*2       *                            t])    **2/(
                     1+i.  exp(       t        *10-   9-  5.5      ));e       =4*l /(   1+(    0.01+
                     (1-a=y-d*    (       1    -y)       /8)**    2)**0.5    -a)*(1-a    *    a+((1-
                      a*a)**2+   0.01   )**    0.5    )** 0.5    ;(i.atan(   (1-0.2*i.         asin(
                      0.98*      u[+   +5.0    *           i.    atan2(y=   3*y-3.4,x         *=3)]
                      ))*(       (0.01+x*x+     y*y      )**    0.5-0.1)    +4*(0.01+z        *z*4
          )**0.5-1)* i.atan(     a*a+e*e-1-10/(1+(40*m)**10+((a+1)*10)**10))-0.01)*b},%w&    MMM##
      TTTQQBKPTVVpQAk5Y7*pgw43v7*pgaor<*"ggau]/~"gau];-~'ga;,,,.'MerryChristmas!&*'',->x    ,y,z,
    s,m{if(m==    1);g=f   [x+=s/2,y+=s/2,z+=s/2];a,  b,c=f[x+d=0.01,y,z]-g,f[x,y+d,z]-    g,f[x,
   y,z+d]           -g;   p<<[x,y,z,a/d=(a*a+b*b+c    *c)**0.5,b/d,c/d];else;(r=0        ...n=[m,4].min).map{|i|r.map{
  |j|a,    b=[f[   x+k    =s*i/n,y+l=s*j/n,z+s],f   [x+k,y+l,z],f[    x,y+k,z+l],f[x+l,y,z+k],f[x+s,y+k,z+l],f[x+l,y++s,
 z+k]].  minmax;return    8.   times    {     |     i|q[x      +          s     *    i     [0],y+s       *i[1]      ,z+s*
i[2],    s,m/2]}if a*b          <0           &&     s/=    2  }}         ;                 end},         0,1    ..  j=128
(0..7)   .each{|i|q[i[    0]    -z=      1.0,i[1    ]-z     ,i[2]    -z,z,64]         ;    $><<   v[2   *i+64     ,2]};;;
sleep    1;loop{  r,s    ,m,    l,d,    w=i.cos(   h+=0.02   ),u[   h],i.cos(  m=    u[    2.3    *h    ]/5),u     [++m],
x.map    {[7]*j},  x.    map    {[7]    *j};;p.    each{|     x,y    ,z,a,b,   e|    x,    z=x    *r    +s*z,z     *r-s*
x;y,z     =m*y+   l*z    ,m       *z    -l*y;x,      y=64*    (x+    1  ),64   *(    1-      y     )       ;x<j    &&y<
 j&&z<            d[x    ][     y]&&   (d[x][y]     ,w       [x][      y]=z    ,(    8*     (1           +(      a*r+b+
  e*s)/2)    /2).floor)};32.times{|i|4.times{|x|w[((u[i**3]+u[h/4+i]/4)*j+x[0])%j][(h/2+u[i*i])%1*j+x[1]]=5}};f=[1,1]
      $><<27.chr+   ?[+f*  ';'+?H+(0..63)     .map{|y|x.map{|x|  v[w[x-=1  ][2*y]*8+w[x][2*y+  1]]}.join}*$/}
