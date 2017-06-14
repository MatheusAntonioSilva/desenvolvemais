class ProdutoPalavrasChafe < ActiveRecord::Base
    belongs_to :produto
    belongs_to :palavra_chafe

end