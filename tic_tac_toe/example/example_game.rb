require_relative "../lib/tic_tac_toe.rb"
 
puts "Welcome to tic tac toe"
bob = TicTacToe::Player.new({color: "X", name: "Alex"})
frank = TicTacToe::Player.new({color: "O", name: "Gordan"})
players = [bob, frank]
TicTacToe::Game.new(players).play