require "bcrypt"

class User < ActiveRecord::Base
	has_many :produtos
	belongs_to :tipo_usuarios
	has_many :parceiro_produtos
	has_many :emails
    has_many :contatos
	has_many :enderecos
	has_many :tipo_projetos
	has_many :grupos
	has_many :categories
	has_many :subgrupos
	has_many :plataformas
	has_many :parceiros
	has_many :ideia
	has_many :modulos
	has_many :motivos
	has_many :agendas
	belongs_to :empresa
	has_one :perfil

	accepts_nested_attributes_for :perfil
	accepts_nested_attributes_for :enderecos
    accepts_nested_attributes_for :emails
    accepts_nested_attributes_for :contatos, reject_if: :all_blank, allow_destroy: true
  
		#has_many :jobs
	#validades_presence_of :email, :name, :password
	#validades_uniqueness_of :email
	#validades_length_of :password, minimum: 6
	#validades_confirmation_of :password

	def password=(new_password)
		@password = new_password
		self.encrypted_password = BCrypt::Password.create(@password)
	end

	def password
		@password
	end

	def valid_password?(password_to_valid)
		BCrypt::Password.new(encrypted_password) == password_to_valid
	end
end
