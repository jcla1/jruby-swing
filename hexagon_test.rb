require_relative "lib/shape.rb"
require_relative "lib/frame.rb"
require_relative "lib/canvas.rb"
require_relative "lib/shapes/hexagon.rb"


frame = Frame.new

shapes = frame.canvas.shapes

shapes.push(Hexagon.new frame.canvas, 150, 150, 150, 130)

#while true
#	shape = shapes[0]
#	shape.rotation= shape.rotation + 0.1
#	sleep(0.01)
#end
