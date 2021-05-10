require_relative 'tic_tac_toe'

class TicTacToeNode
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_mov_pos = @prev_mov_pos
  end

  def losing_node?(evaluator)
    return @board.winner != evaluator if @board.over? 
    if evaluator == @next_mover_mark 




  end

  def winning_node?(evaluator)

  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children
    next_moves = []

    @board.each_with_index do |row, i|
      row.each_index do |j|
        if @board.empty?([i,j])
          new_board = @board.dup 
          new_board[i,j] = @next_mover_mark
          next_moves << TicTacToeNode.new(new_board, swap_mark(@next_mover_mark), [i,j])
        end
      end
    end

    next_moves
  end

  def swap_mark(mark)
    mark == :x ? :o : :x
  end 




end
