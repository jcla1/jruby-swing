require "java"

java_import "javax.swing.JPanel"

class Canvas < JPanel
	attr_accessor :shapes

	def initialize
		@shapes = []
	end

	def paintComponent g
		g.clear_rect 0, 0, get_width, get_height
		draw_shapes g
	end

	def draw_shapes g
		@shapes.each do |shape|
			shape.paint g
		end
	end
end