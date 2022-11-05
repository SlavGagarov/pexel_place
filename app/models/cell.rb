class Cell < ApplicationRecord
	validates :x, presence: true
	validates :y, presence: true

	after_initialize :set_default

	def set_default
		self.color  ||= "#FFFFF"
	end

	def set_color_to_property(property)
		return "#{property}: #{color}"
	end
end
