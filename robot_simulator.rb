class Robot

	attr_accessor :coordinates, :bearing

	def initialize
		@coordinates = [0, 0]
		@bearing = :north
	end

	def orient(arg)
		raise ArgumentError unless arg == :north || arg == :south || arg == :east || arg == :west
		self.bearing = arg
	end

end
