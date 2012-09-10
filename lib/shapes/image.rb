require "java"

java_import "javax.imageio.ImageIO"
java_import "java.awt.image.BufferedImage"
java_import "java.io.File"

class Image < Shape
	def initialize canvas, x, y, width, height, imagepath, rotation=0.0
		@x = x
		@y = y
		@height = height
		@width = width

		@color = nil

		@rotation = rotation

		@canvas = canvas

		@image = File.new imagepath


		generate_new_speed

		@buffered_img = ImageIO.read(@image)

		redraw
	end

	def get_shape
		return @buffered_img
	end
end