class Motivo < ActiveRecord::Base
    belongs_to :user
    has_many :agendas
end
