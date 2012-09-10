require "lib/shape.rb"
require "lib/frame.rb"
require "lib/canvas.rb"
require "lib/shapes/image.rb"


frame = Frame.new

shapes = frame.canvas.shapes



shapes.push(Image.new frame.canvas, 0, 0, 100, 100, "sun.gif")