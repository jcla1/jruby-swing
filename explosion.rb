require_relative "lib/shape.rb"
require_relative "lib/frame.rb"
require_relative "lib/canvas.rb"
require_relative "lib/shapes/ellipse.rb"


def animate frame
	shapes = frame.canvas.shapes
	while true
		if shapes.length < 99
			frame.canvas.shapes.push(Ellipse.new(frame.canvas, 240, 240, 20, 20))
		end

		shapes.each do |shape|
			shape.move_by_speed
		end
		sleep(0.01)
	end
end

frame = Frame.new
animate frame