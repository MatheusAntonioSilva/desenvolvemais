Rails.application.routes.draw do

  root to: "inicio#index"
   get "login", to: "login#new"
   post "login", to: "login#create"
   get "newinteressado", to: "users#newinteressado"
   get "newestudante", to: "users#newestudante"
   get "newinvestidor", to: "users#newinvestidor"
   get "newcompany", to: "users#newcompany"
   resources :users, only: [:newcompany, :create] 
   resources :categories, only: [:new, :create, :edit, :update, :edit, :update]
   get"/categories/:id" => "categories#destroy"
   get "categorias/index", to: "categories#index"
   get "produtos/index", to: "produtos#index"
   get '/solucoes/:id', to: 'solucoes#show' , as: 'solucoe'
   resources :produtos, only: [:new, :create, :edit, :update]
   get "produtos/index", to: "produtos#index"
   get"/produtos/:id" => "produtos#destroy"
   resources :marcas, only: [:new, :create, :edit, :update]
   get "marcas/index", to: "marcas#index"
   get"/marcas/:id" => "marcas#destroy"
   get "/home", to: "home#index"
   resources :grupos, only: [:new, :create, :edit, :update, :edit, :update]
   get "grupos/index", to: "grupos#index"
   get"/grupos/:id" => "grupos#destroy"
 
   get "subgrupos/index", to: "subgrupos#index"
   resources :subgrupos, only: [:new, :create, :edit, :update]
   get"/subgrupos/:id" => "subgrupos#destroy"
   get "parceiros/index", to: "parceiros#index"
   resources :parceiros, only: [:new, :create, :edit, :update]
   get"/parceiros/:id" => "parceiros#destroy"
   get "financeiro/index", to: "financeiros#index"
   resources :financeiros, only: [:new, :create, :edit, :update]
   get"/financeiro/:id" => "financeiros#destroy"
   get "inicio", to: "inicio#index"
   get "solucoes", to: "solucoes#index"
   get "viewprodutos", to: "solucoes#produtos"
   get "palavras/index", to: "palavras_chaves#index" 
   resources :palavras_chaves, only: [:new, :create, :edit, :update]
   get "palavras_chaves/:id" => "palavras_chaves#destroy"
   get "plataformas/index", to: "plataformas#index" 
   resources :plataformas, only: [:new, :create, :edit, :update]
   get "plataformas/:id" => "plataformas#destroy"
   get "tiposprojetos/index", to: "tipo_projetos#index" 
   resources :tipo_projetos, only: [:new, :create, :edit, :update]
   get"/tipo_projetos/:id" => "tipo_projetos#destroy"
   get '/produtoschaves/:id', to: 'produto_chaves#show' , as: 'produtochaves'
    get '/produtoschaves/:produto_id', to: 'produtos#associacao' , as: 'associacao'
   resources :produto_chaves, only: [:new,  :create, :edit, :update]
 
   resources :visitantes, only: [:new, :create]
  resources :parceiro_produtos
   get "interesse/index", to: "parceiro_produtos#index"
   get "interesse/new", to: "parceiro_produtos#interesse" 
   get "interesse/adicionarinteresse", to: "parceiro_produtos#adicionarinteresse" 
   get '/interesses/:id', to: 'parceiro_produtos#produto' , as: 'interesse'
  get "visitantes/login", to: "loginvisitantes#new"
 post "visitantes/login", to: "loginvisitantes#create"
   resources :contatos
  resources :emails
   resources :visitanteinteressados
     resources :perfils, only: [:new,  :create, :edit, :update]
  resources :enderecos
    get "perfil/index", to: "perfils#index"
      get "ideia/index", to: "ideia#index" 
   get "ideia/suasideias", to: "ideia#suasideias" 
   get "ideium/:id", to: 'ideia#show', as: 'interessou'
    get "suaideia/:id", to: 'ideia#suaideiashow', as: 'suaideia'
   resources :ideia, only: [:new, :create, :edit, :update]
   get"/ideia/:id" => "ideia#destroy"
    
    resources :useradmin, only: [:new, :create, :edit, :update]
    get 'useradmin/index', to: "useradmin#index"
    resources :modulos, only: [:new, :create, :edit, :update]
    get 'modulos/index', to: "modulos#index"

  resources :motivos, only: [:new, :create, :edit, :update]
  get 'motivos/index', to: "motivos#index"
  resources :agendas, only: [:new, :create, :edit, :update]
  get 'agendas/index', to: "agendas#index"
  resources :statuses, only: [:new, :create, :edit, :update]
  
  resources :tipos, only: [:new, :create, :edit, :update]
  resources :empresas, only: [:new, :create, :edit, :update]
  get 'empresa/index', to: "empresas#index"

 

 #get ihome#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
