require './Player'
require './Question'

class Game
  def initialize 
    @player1 = Player.new("player1")
    @player2 = Player.new("player2")
    @current_player = @player1
  end 

  def switch_player
    if @current_player.name == @player1.name
       @current_player = @player2
    else
      @current_player = @player1
    end  
  end 
  
  def game_start  
    while @player1.life > 0 && @player2.life > 0 
      @question = Question.new(@current_player.name)
      @question.question_start
      input = gets.chomp.to_i

      if input == @question.get_result
        puts "bingo! #{@player1.name}: #{@player1.life}/3 , #{@player2.name}: #{@player2.life}/3"
      else 
        @current_player.reduce_life
        puts "oh no! #{@player1.name}: #{@player1.life}/3, #{@player2.name}: #{@player2.life}/3"

        if !@current_player.is_alive
        end  

      end  
      switch_player()

    end

    puts "********game over winner is #{@current_player.name}"

  end

end




# new_game = Game.new
# new_game.game_start