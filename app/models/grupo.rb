class Grupo < ActiveRecord::Base
	validates :descricao, presence: true
end
