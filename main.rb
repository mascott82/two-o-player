require './player.rb'
require './mathQuestion.rb'

TOTAL_LIVES = 3

player1 = Player.new("Player 1", "P1", TOTAL_LIVES)
player2 = Player.new("Player 2", "P2", TOTAL_LIVES)

mathQuestion = MathQuestion.new

current_player = player1

start = true

while player1.lives > 0 && player2.lives > 0
  if !start 
    puts '----- NEW TURN -----'
  end
  puts current_player.name + ": " + mathQuestion.generate_question()
  print "> "
  answer = gets.chomp.to_i

  if mathQuestion.check_answer(answer)
    puts "#{current_player.name}: YES! You are correct."
    current_player.add_score()
  else
    puts "#{current_player.name}: Seriously? No!"
    current_player.lost_life()
  end

  puts "#{player1.initial_name}: #{player1.lives}/#{TOTAL_LIVES} vs #{player2.initial_name}: #{player2.lives}/#{TOTAL_LIVES}" 

  current_player = (current_player == player1) ? player2 : player1
  start = false
end

if player1.lives > 0
  puts "#{player1.name} wins with a score of #{player1.lives}/#{TOTAL_LIVES}"
else 
  puts "#{player2.name} wins with a score of #{player2.lives}/#{TOTAL_LIVES}"
end

puts '----- GAME OVER -----'
puts 'Good bye!'