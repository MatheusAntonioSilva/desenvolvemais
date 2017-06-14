class PalavrasChafe < ActiveRecord::Base
    has_many :produto_chaves
    has_many :produtos, through: :produto_chaves
end
