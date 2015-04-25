def new 
	@quiz = Quiz.new 
end 

def create 
	@quiz = Quiz.new (Quiz_params)
	if @quiz.save
		redirect_to "http://www.rubyonrails.org"
	end 
end 

def quiz
