# install
```
gem install yeah_i_did
```

# use
```
[1] pry(main)> require 'yeah_i_did'
=> true
[2] pry(main)> putz "oh no"
NoMethodError: undefined method `putz' for main:Object
Did you mean?  puts
               putc
from (pry):2:in `__pry__'
[3] pry(main)> DidYouMean.yeah_i_did { putz "aw yeah" }
aw yeah
=> nil
```
