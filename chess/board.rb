require_relative 'piece'
require 'colorize'

class Board

  attr_accessor :grid

  def make_starting_grid
    Array.new(8) { Array.new(8, NullPiece.new) }
  end

  def initialize
    @grid = make_starting_grid
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, value)
    x, y = pos
    @grid[x][y] = value
  end

  def dup

  end

  def move_piece(start_pos, end_pos)
    raise StandardError 'There is no piece here' if self[start_pos].type.nil?
    raise StandardError 'Invalid end_pos given' unless valid_pos?(end_pos)
  end

  def valid_pos?(pos)
    pos.all? { |x| x > 0 && x < 8 }
  end
end
