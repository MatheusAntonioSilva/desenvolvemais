class TipoProjeto < ActiveRecord::Base
    has_many :produto
    belongs_to :user
end
