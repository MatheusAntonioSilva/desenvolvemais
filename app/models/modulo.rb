class Modulo < ActiveRecord::Base
    belongs_to :user
    belongs_to :produto
    belongs_to :user
end
