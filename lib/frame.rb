require "java"

java_import "javax.swing.JFrame"

class Frame < JFrame
	attr_accessor :canvas

	def initialize
		super "My Frame"

		init_ui
	end

	def init_ui
		self.set_size(500, 500)

		@canvas = Canvas.new
		self.add @canvas

		self.show
	end

	def add_mouse_listener listener
		@canvas.addMouseListener listener
	end
end