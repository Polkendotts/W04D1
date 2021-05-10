require_relative 'tic_tac_toe_node'

class SuperComputerPlayer < ComputerPlayer
  def move(game, mark)
    board_node = TicTacToeNode.new(game.board, mark)
    board_node.children.each {|child| return child.prev_move_pos if child.winning_node?(mark)}
    board_node.children.each {|child| return child.prev_move_pos unless child.losing_node?(mark) }
    raise "Impossible Game!"
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Play the brilliant computer!"
  hp = HumanPlayer.new("Jeff")
  cp = SuperComputerPlayer.new

  TicTacToe.new(hp, cp).run
end
