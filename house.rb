require "lib/shape.rb"
require "lib/frame.rb"
require "lib/canvas.rb"
require "lib/shapes/triangle.rb"
require "lib/shapes/rectangle.rb"
require "lib/shapes/ellipse.rb"


frame = Frame.new

shapes = frame.canvas.shapes



shapes.push(Rectangle.new frame.canvas, 150, 150, 150, 150, [165, 42, 42])
shapes.push(Rectangle.new frame.canvas, 230, 240, 40, 60, [65, 105, 225])
shapes.push(Rectangle.new frame.canvas, 170, 180, 40, 40, [0, 205, 0])

shapes.push(Triangle.new frame.canvas, 125, 90, 200, 60, [255, 0, 0])

shapes.push(Ellipse.new frame.canvas, 120, 80, 30, 30, [255, 215, 0])