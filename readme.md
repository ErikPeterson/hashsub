#hashsub v0.1.1
An gem that extends the ruby `String` class with the methods `hashsub` and `hashsub!`. `hashsub` to implement global subsitution in strings using a hash in the format `/regex/=> "substitution"`  


####usage  




####"string".hashsub({/pattern/=>selector[, /pattern/ => selector]*}) #=> "new string"

The method `hashsub` is called with a single argument, a hash where each key is a regex pattern or string to match in `self` and each value is a corresponding string to use for replacement.  




####example


```
require 'hashsub'

def manipulator(str)
	hash_matches = {
		/\bfou?r\b/i => "4", #regex with flags
		"/\bto+|two\b/"" => "2", #regex as string
		"eight" => "8", #plain string
		/\bsc(.*)\b/ => "sc\1\1\1"
	}
	str.hashsub(hash_matches)
end

manipulator("Four score and eight years to go.") #=> "4 scoreoreore and 8 years 2 go"

```  




####string.hashsub!({/pattern/=>selector[, /pattern/ => selector]*}) #=> string

`hashsub!` compares to `hashsub` as expected, performing the same operation but returning the original `String` object, with its value changed.  





####Installation


`$> git clone https://github.com/erikpeterson/hashsub`

```
$> gem build hashsub/hashsub.gemspec
	...
	File: hashsub-0.1.0.gemspec
```

`$> gem install hashsub/hashsub-0.1.0.gemspec`  





#WARNING
This function extends the String class, and has not been tested on versions of Ruby other than 2.0.0p247. Use at your own risk.