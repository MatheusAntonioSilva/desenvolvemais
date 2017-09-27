class Plataforma < ActiveRecord::Base
    belongs_to :user
    has_many :produto
end
