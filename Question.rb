class Question 
  def initialize (name)
    @player = name
    @random_num1 = rand(1..20)
    @random_num2 = rand(1..20)
    @result = @random_num1 + @random_num2
  end 

  def question_start 
    puts "#{@player}: What does #{@random_num1} plus #{@random_num2}"
  end  
  def get_result 
    @result 
  end
  
end
