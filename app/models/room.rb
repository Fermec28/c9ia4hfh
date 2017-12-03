# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  beds        :integer
#  guests      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  image_url   :string
#

#l campo description no debe tener más de 400 caracteres.
#El campo beds debe ser un número (entero).
#El campo guests debe ser un número (entero).

class Room < ActiveRecord::Base
	validates :title, :description, :beds, :guests, :image_url, presence: true
	validates :description, length:{maximum:400}
	validates :beds, :guests, numericality: {only_integer: true}
end
