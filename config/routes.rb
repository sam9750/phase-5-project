# Rails.application.routes.draw do
#   get 'carts/show'
#   get 'items/index'
#   get 'items/new'
#   get 'items/edit'
#   resources :products
#   get 'submission/title', to: "submission#index"
#   get 'submission/price:integer', to: "submission#index"
#   get 'submission/stripe_payment_id:string', to: "submission#index"
#   get 'submission/status:string', to: "submission#index"
#   get 'submissions/index', to: "submissions#index"
#   get 'submissions/new', to: "submissions#index"
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# resources :orders
# resources :items
# resources :submissions
# root 'submissions#index'
#   # Defines the root path route ("/")
#   # root "articles#index"
#   # get '/card/new' => 'billing#new_card', as: :add_payment_method
#   post '/charges', to: 'charges#create'
#   # root 'billing#index', as: :billing ,

# root 'items#index'

get 'carts/:id' => "carts#show", as: "cart"
delete 'carts/:id' => "carts#destroy"

post 'cart_items/:id/add' => "cart_items#add_quantity", as: "cart_item_add"
post 'cart_items/:id/reduce' => "cart_items#reduce_quantity", as: "cart_item_reduce"
post 'cart_items' => "cart_items#create"
get 'cart_items/:id' => "cart_items#show", as: "cart_item"
delete 'cart_items/:id' => "cart_items#destroy"

resources :items
resources :orders

# Link from the item index page (erb tags)
button_to "Add to cart", cart_items_path(:item_id => item.id)

# Link from the Cart show (erb tags)
link_to "Add (+1)", cart_item_add_path(:id => cart_item), method: :post
link_to "Reduce (-1)", cart_item_reduce_path(:id => cart_item), method: :post
link_to "Remove item", cart_item_path(cart_item), method: :delete