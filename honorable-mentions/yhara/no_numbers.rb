I=Integer;O=[ObjectSpace,
].first;s=10**24;at_exit{
a,=O.each_object(I).sort,
e=s*10;b=a.select{|n|0<=>
s<n&&n<e}.map{|n| n.to_s{
}.slice 1,25}.join.to_i||
$><<["%x"%b].pack('H*')};
