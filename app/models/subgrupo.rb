class Subgrupo < ActiveRecord::Base
	belongs_to :user
	validates :descricao, presence: true
end
