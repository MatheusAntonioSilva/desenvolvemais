class Marca < ActiveRecord::Base
	validates :descricao, presence: true
end
