require_relative 'board'
require_relative 'cursor'
require 'colorize'

class Display

  def initialize(board)
    @board = board
    @cursor_pos = Cursor.new([0,0], @board)
  end

  def render
    puts "-" * 30
    @board.grid.each_with_index do |row, idx|
      puts "#{idx}: "
      p render_row(row)
    end
    puts "-" * 30
  end

  private

  def render_row(row)
    row = row.each do |cell|
      cell.to_s + "|"
    end
    row
  end
end
