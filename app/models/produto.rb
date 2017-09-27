class Produto < ActiveRecord::Base
	belongs_to :marca
	belongs_to :grupo
	belongs_to :classificacoe
	belongs_to :subgrupo
	belongs_to :user
	belongs_to :modulo
	belongs_to :tipo_projeto
	belongs_to :plataforma
	has_many :produto_chave
	has_many :parceiro_produtos

	 accepts_nested_attributes_for :parceiro_produtos



	def new

		@preco_venda = Produto.preco_venda
		@preco_custo = Produto.preco_custo
		id = Produto.id

		if(@preco_venda != 0 and @produto.preco_custo != 0)
			margem = @preco_venda / @preco_custo * 100 - 100
			Produto.find(produto.id).update 
			Produto.update(id, margem_bruta:  margem) 
		end
	end
end
