#require 'singleton'
class Piece
  attr_accessor :type

  def initialize
    @type = nil
  end

  def to_s
    "x"
  end
end

class NullPiece < Piece
  #include Singleton
  attr_accessor :type

  def initialize
    super
  end

  def missing_method
    initialize
  end
end
