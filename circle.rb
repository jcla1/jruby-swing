require "lib/shape.rb"
require "lib/frame.rb"
require "lib/canvas.rb"
require "lib/shapes/ellipse.rb"


frame = Frame.new

frame.canvas.shapes.push(Ellipse.new frame.canvas, 0, 0, 20, 20)

while true
	time = Time.now.to_f
	frame.canvas.shapes[0].move_to 100 * Math.cos(time) + 240, 100 * Math.sin(time) + 240
	sleep(0.01)
end





