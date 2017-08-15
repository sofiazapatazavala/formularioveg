class Form < ActiveRecord::Base
	validates :email, presence: true, uniqueness: true
	validates :nombre, :apellido, :ciudad, :pais, presence: true
end
