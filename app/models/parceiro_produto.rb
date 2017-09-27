class ParceiroProduto < ActiveRecord::Base
    	belongs_to :user
        belongs_to :produto
        has_many :emails
        has_many :contatos
        has_many :enderecos
        validates_associated :produto, :user


         accepts_nested_attributes_for :produto
end
