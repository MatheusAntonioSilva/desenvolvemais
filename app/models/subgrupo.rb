class Subgrupo < ActiveRecord::Base
	validates :descricao, presence: true
end
