# Used to initialize a new game instance && track the game state and deliver prompts from other classes
require './player'
require './question'

class Game
  attr_accessor :current_player
  
  p1 = Player.new("Player 1")
  p2 = Player.new("Player 2")

  # sets first player randomly
  current_player = [p1, p2].sample

  while p1.get_lives > 0 && p2.get_lives > 0
    
    current_question = Question.new
    current_question.new_question

    puts "#{current_player.name}: #{current_question.question} equal?"

    correct = current_question.is_correct?
    current_question.answer
    
    if correct
      puts "YES! Your are correct."
      puts "P1: #{p1.get_lives}/3 vs P2 #{p2.get_lives}/3"
    else
      puts "Seriously? No!"
      current_player.wrong_answer
      puts "P1: #{p1.get_lives}/3 vs P2 #{p2.get_lives}/3"
    end
    
    if current_player.get_lives > 0
      puts "---NEW TURN ---"
    end
    
    # change player
    if 
      current_player == p1
      current_player = p2
    else
      current_player = p1
    end
  end
  puts "#{current_player.name} wins with a score of #{current_player.get_lives}/3"
  puts "--- GAME OVER ---"
  puts "k thx bye!"
end
