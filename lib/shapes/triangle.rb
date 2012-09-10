require "java"

java_import "java.awt.Polygon"

class Triangle < Shape
	def get_shape
		x_points = [@x, @x + @width, @x + @width / 2]
		y_points = [@y + @height, @y + @height, @y]
		polygon = Polygon.new(x_points.to_java(Java::int), y_points.to_java(Java::int), 3)
		return polygon
	end
end