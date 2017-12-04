require 'pry'

class Robot

  attr_accessor :coordinates, :bearing

  POSSIBLE_DIRECTIONS = [:north, :east, :south, :west]

  def initialize
    @coordinates = [0, 0]
    @bearing = :north
  end

  def orient(arg)
    raise ArgumentError unless POSSIBLE_DIRECTIONS.include?(arg)
    self.bearing = arg
  end

  def turn_right
    self.bearing = POSSIBLE_DIRECTIONS[(POSSIBLE_DIRECTIONS.index(self.bearing) + 1 ) % 4]
  end

  def turn_left
    self.bearing = POSSIBLE_DIRECTIONS[(POSSIBLE_DIRECTIONS.index(self.bearing) - 1 ) % 4]
  end

  def at(x, y)
    self.coordinates = [x, y]
  end

  def advance
    case self.bearing
    when :north
      self.coordinates.map!.with_index{ |e, i| [0, 1][i] }
    when :east
      self.coordinates.map!.with_index{ |e, i| [1, 0][i] }
    when :south
      self.coordinates.map!.with_index{ |e, i| [0, -1][i] }
    when :west
      self.coordinates.map!.with_index{ |e, i| [-1, 0][i] }
    end
  end

end
