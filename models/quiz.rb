class Quiz

	def initialize(results) 
		@results = results 
		@scores = {
					:sporty => 0,
					:nerdy => 0,
					:rich => 0
				}
	end

	def process_results
		@results.each do |key, value|
			if value == "nerdy"
				@scores[:nerdy]+=1
			elsif value == "sporty"
				@scores[:sporty]+=1
			else 
				@scores[:rich]+=1
			end 
		end 
	end

	def find_max
		@winner = @scores.max_by{ |k,v| v }[0]
	end 
end