# Code:    © 2017 (all rights reserved)
# License: This software may be modified and distributed under the terms of the
#          MIT license.
# Music:   "Clapping Music" by Steve Reich © 1972

1872.times{|♪|`say -r9999 #{(👏="@@@,@@,@,@@,".chars*2)[♪/144+♪%=12].tr(?@,?x)+👏[♪]}..`}
