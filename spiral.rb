require_relative "lib/shape.rb"
require_relative "lib/frame.rb"
require_relative "lib/canvas.rb"
require_relative "lib/shapes/ellipse.rb"


frame = Frame.new

frame.canvas.shapes.push(Ellipse.new frame.canvas, 0, 0, 20, 20)

i = 200
while i > 0
	time = Time.now.to_f
	frame.canvas.shapes[0].move_to i * Math.cos(time) + 240, i * Math.sin(time) + 240
	sleep(0.01)
	i -= 0.1;
end





