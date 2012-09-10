require "java"

java_import "java.awt.Color"
java_import "java.awt.geom.AffineTransform"

class Shape
	attr_accessor :canvas, :x, :y, :width, :height, :color, :rotation

	def initialize canvas, x, y, width, height, color=[255, 0 , 0], rotation=0.0
		@x = x
		@y = y
		@height = height
		@width = width

		@color = Color.new color[0], color[1], color[2]

		@rotation = rotation

		@canvas = canvas


		generate_new_speed

		redraw
	end

	def move_to x, y
		if x < 0 || y < 0 || x > 500 || y > 500
			@x = 240
			@y = 240
		else
			@x = x
			@y = y
		end
		redraw
	end

	def color= color
		@color = Color.new color[0], color[1], color[2]
		redraw
	end

	def redraw
		@canvas.repaint
	end

	def generate_new_speed
		@speed_x = (-5..5).to_a.sample
		@speed_y = (-5..5).to_a.sample

		if @speed_x == 0 || @speed_y == 0 || @speed_x == @speed_y
			generate_new_speed
		end
	end

	def move_by_speed
		self.move_to @x + @speed_x, @y + @speed_y 
	end

	def paint g
		if @rotation != 0.0
			affinetrans = AffineTransform.new
			affinetrans.rotate @rotation, @x + 0.5 * @width, @y + 0.5 * @height
			g.transform affinetrans
		end

		shape = get_shape

		if shape.class != Java::JavaAwtImage::BufferedImage
			g.set_color @color
			g.fill shape
		else
			g.drawImage shape, @x , @y, @width, @height, 0, 0, shape.height, shape.width, nil
		end

		if @rotation != 0.0
			affinetrans = AffineTransform.new
			affinetrans.rotate -@rotation
			g.transform affinetrans
		end
	end

	def rotation= theta
		@rotation = theta
		redraw
	end
	
end