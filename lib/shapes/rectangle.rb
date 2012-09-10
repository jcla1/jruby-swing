require "java"

java_import "java.awt.geom.Rectangle2D"

class Rectangle < Shape
	def get_shape
		return Rectangle2D::Double.new @x, @y, @width, @height
	end
end