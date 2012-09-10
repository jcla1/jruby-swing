require "lib/shape.rb"
require "lib/frame.rb"
require "lib/canvas.rb"
require "lib/shapes/hexagon.rb"


frame = Frame.new

shapes = frame.canvas.shapes



shapes.push(Hexagon.new frame.canvas, 50, 50, 150, 130)

while true
	time = Time.now.to_f
	shapes[0].move_to 100 * Math.cos(time) + 240, 100 * Math.sin(time) + 240
	sleep(0.01)
end
