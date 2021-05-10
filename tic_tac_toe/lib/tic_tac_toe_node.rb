require_relative 'tic_tac_toe'

class TicTacToeNode
  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_mov_pos = @prev_mov_pos
  end

  def children
    @board.each_with_index do |row, i|
      row.each_index do |j|
        if @board.empty?([i,j])
          new_board = @board.dup
          TicTacToeNode.new()
        end
      end
    end
  end

  def losing_node?(evaluator)

  end

  def winning_node?(evaluator)

  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children

  end
end
