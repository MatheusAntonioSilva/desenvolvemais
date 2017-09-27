class Empresa < ActiveRecord::Base
    has_many :users
	has_many :status
    has_many :tipos
end
