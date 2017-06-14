class ProdutoChave < ActiveRecord::Base
    belongs_to :produto
	belongs_to :palavras_chafe
    
end
