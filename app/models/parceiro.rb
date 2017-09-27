class Parceiro < ActiveRecord::Base
    has_many :parceiro_produto
    belongs_to :user
end
