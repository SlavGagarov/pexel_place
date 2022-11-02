class Cell < ApplicationRecord
	validates :x, presence: true
	validates :y, presence: true

	after_initialize :set_default

	def set_default
		self.color  ||= "#FFFFF"
	end

	def get_color
		return "color: #{color}"
	end
end
