require_relative "lib/shape.rb"
require_relative "lib/frame.rb"
require_relative "lib/canvas.rb"
require_relative "lib/shapes/ellipse.rb"


require "java"

java_import "java.awt.event.MouseAdapter"

class MouseAction < MouseAdapter
  def mousePressed(e)
    canvas = e.getComponent
    canvas.shapes.push( Ellipse.new(canvas, e.x - 10, e.y - 10, 20, 20) )
  end
end


frame = Frame.new
frame.add_mouse_listener MouseAction.new