# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170808231014) do

  create_table "agendas", force: :cascade do |t|
    t.string   "descricao"
    t.date     "data"
    t.time     "horario_inicio"
    t.time     "horario_fim"
    t.integer  "user_id"
    t.integer  "empresa_id"
    t.integer  "produto_id"
    t.integer  "motivo_id"
    t.string   "observacao"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "name"
  end

  create_table "categoria", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classificacaos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classificacoes", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "classificacoes", ["user_id"], name: "index_classificacoes_on_user_id"

  create_table "classificaos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contatos", force: :cascade do |t|
    t.string   "contato"
    t.boolean  "visitante"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "user_id"
    t.integer  "parceiroproduto_id"
    t.integer  "visitanteinteressado_id"
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.boolean  "visitante"
    t.integer  "visitanteinteressado_id"
    t.integer  "parceiroproduto_id"
    t.integer  "user_id"
  end

  create_table "empresas", force: :cascade do |t|
    t.string   "razsocial"
    t.string   "cnpj"
    t.string   "fantasia"
    t.date     "data_contrato"
    t.date     "data_vencimento"
    t.string   "token"
    t.float    "valor"
    t.integer  "status_id"
    t.integer  "tipo_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

# Could not dump table "enderecos" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "financeiros", force: :cascade do |t|
    t.integer  "parcela"
    t.date     "data_emissa"
    t.date     "data_vencimento"
    t.float    "valor"
    t.date     "data_rebimento"
    t.float    "valor_recebido"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "grupos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "grupos", ["user_id"], name: "index_grupos_on_user_id"

  create_table "ideia", force: :cascade do |t|
    t.string   "descricao"
    t.string   "descricaocompleta"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "user_id"
    t.string   "descricaoum"
    t.string   "descricaodois"
    t.string   "descricaotres"
    t.string   "tituloum"
    t.string   "titulodois"
    t.string   "titulotres"
  end

  add_index "ideia", ["user_id"], name: "index_ideia_on_user_id"

  create_table "marcas", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "modulos", force: :cascade do |t|
    t.string   "descricao"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motivos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "motivos", ["user_id"], name: "index_motivos_on_user_id"

  create_table "palavras_chaves", force: :cascade do |t|
    t.string   "palavra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "palavras_chaves_produtos", id: false, force: :cascade do |t|
    t.integer "produto_id",        null: false
    t.integer "palavras_chafe_id", null: false
  end

# Could not dump table "parceiro_produtos" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "parceiros", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf_cnpj"
    t.string   "rg"
    t.string   "telefone"
    t.string   "apelido"
    t.boolean  "fisica_juridica"
    t.date     "dt_nacimento"
    t.boolean  "cliente"
    t.boolean  "fornecedor"
    t.string   "cep"
    t.string   "endereco"
    t.integer  "numero"
    t.integer  "ibge"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.string   "pais"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "fisica"
    t.boolean  "juridica"
    t.integer  "user_id"
  end

  add_index "parceiros", ["user_id"], name: "index_parceiros_on_user_id"

  create_table "perfils", force: :cascade do |t|
    t.string   "descricao"
    t.string   "profissao"
    t.string   "objetivo"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "teste"
    t.string   "teste1"
    t.string   "profissoes"
    t.date     "aniversario"
    t.string   "formacao"
    t.string   "habilidades"
    t.string   "conhecimentos"
  end

  create_table "plataformas", force: :cascade do |t|
    t.string   "plataforma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "plataformas", ["user_id"], name: "index_plataformas_on_user_id"

  create_table "precos_produtos", force: :cascade do |t|
    t.float    "margem_bruta"
    t.float    "preco_venda"
    t.float    "preco_custo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "produto_id"
  end

  create_table "produto_chaves", force: :cascade do |t|
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "produto_id"
    t.integer  "palavrachafe_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "descricao"
    t.string   "codbarra"
    t.string   "codfabrica"
    t.string   "unidade"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "grupo_id"
    t.integer  "marca_id"
    t.integer  "classificacoe_id"
    t.integer  "subgrupo_id"
    t.float    "preco_venda"
    t.float    "preco_custo"
    t.float    "margem_bruta"
    t.integer  "user_id"
    t.string   "descricaocompleta"
    t.integer  "tipoprojeto_id"
    t.integer  "plataforma_id"
    t.integer  "gestao"
    t.integer  "estoque"
    t.integer  "venda"
    t.integer  "compra"
    t.integer  "ecommerce"
    t.integer  "erp"
    t.integer  "jogos"
    t.integer  "infraestrutura"
    t.integer  "modulo_id"
  end

  add_index "produtos", ["user_id"], name: "index_produtos_on_user_id"

  create_table "statuses", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subgrupos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "subgrupos", ["user_id"], name: "index_subgrupos_on_user_id"

  create_table "tabela_precos", force: :cascade do |t|
    t.float    "preco"
    t.float    "custo"
    t.float    "precovenda"
    t.float    "margembruta"
    t.float    "margemliquida"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "testes", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "textos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipo_projetos", force: :cascade do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "tipo_projetos", ["user_id"], name: "index_tipo_projetos_on_user_id"

  create_table "tipo_usuarios", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "encrypted_password"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "tipousuario"
    t.integer  "tipousuario_id"
    t.integer  "perfil_id"
    t.string   "sobrenome"
    t.string   "empresa"
    t.string   "token"
    t.integer  "empresa_id"
  end

  create_table "visitanteinteressados", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
