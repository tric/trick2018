def STDOUT.write (s); syswrite s
 end if def $>.write; end
s = Array.new(){}.map{|s|}
s << (-"Trick").grapheme_clusters{}        [0] # frozen_string_literal: Trick
s << ("Ruby".unpack *"ao")                 [0]
s << "#{10**2018 + 1e2018}"                [0]
s << "#{1>2>3 rescue $!.class.trust.class}"[0]
s << "#{true; Kernel.public_class_method}" [0]
s << ($ruby.object_id.coerce +2018)        [0]
result = puts s*""
