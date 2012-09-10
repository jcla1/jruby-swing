require "java"

java_import "java.awt.geom.Ellipse2D"

class Ellipse < Shape
	def get_shape
		return Ellipse2D::Double.new @x, @y, @height, @width
	end
end