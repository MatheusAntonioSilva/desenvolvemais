class Endereco < ActiveRecord::Base
    belongs_to :user
	belongs_to :parceiro_produto
	belongs_to :visitanteinteressado
end
