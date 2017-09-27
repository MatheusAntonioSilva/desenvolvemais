class Visitanteinteressado < ActiveRecord::Base
    has_many :emails
    has_many :contatos
    has_many :enderecos


    accepts_nested_attributes_for :enderecos
    accepts_nested_attributes_for :emails
    accepts_nested_attributes_for :contatos, reject_if: :all_blank, allow_destroy: true
  
end
