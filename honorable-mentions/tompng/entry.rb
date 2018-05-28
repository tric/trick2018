[862989043,1319642209].any?{|
b|send :srand,b;eval(6.times.
map{File.read(__FILE__).chars
.uniq.sort.sample}.join)[57]}
