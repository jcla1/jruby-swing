require_relative "lib/shape.rb"
require_relative "lib/frame.rb"
require_relative "lib/canvas.rb"
require_relative "lib/shapes/image.rb"


frame = Frame.new

shapes = frame.canvas.shapes



shapes.push(Image.new frame.canvas, 0, 0, 100, 100, "sun.gif")