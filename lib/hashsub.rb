class String
	def hashsub(hash)
		rtrn = self
		hash.each do |regex, substitution|
			rtrn = rtrn.gsub((Regexp.new regex), substitution)
		end
		rtrn
	end
	def hashsub!(hash)
		rtrn = self	
		hash.each do |regex, substitution|
			rtrn = rtrn.gsub((Regexp.new regex), substitution)
		end
		self[0..self.length] = rtrn
	end
end
