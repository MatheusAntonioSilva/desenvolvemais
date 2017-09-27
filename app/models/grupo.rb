class Grupo < ActiveRecord::Base
	belongs_to :user
	belongs_to :produto
	validates :descricao, presence: true
end
