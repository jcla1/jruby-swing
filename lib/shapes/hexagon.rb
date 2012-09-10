require "java"

java_import "java.awt.Polygon"

class Hexagon < Shape
	def get_shape
		x_points = [
			@x + 0.25 * @width,
			@x + 0.75 * @width,
			@x + @width,
			@x + 0.75 * @width,
			@x + 0.25 * @width,
			@x
		]

		y_points = [
			@y,
			@y,
			@y + 0.5 * @height,
			@y + @height,
			@y + @height,
			@y + 0.5 * @height
		]

		polygon = Polygon.new(x_points.to_java(Java::int), y_points.to_java(Java::int), 6)
		return polygon
	end
end