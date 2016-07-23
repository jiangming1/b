Rails.application.routes.draw do
#match ':controller(/:action(/:id(.:format)))', :via => :all
  resources :lcb_access_items
  resources :lcb_account_sheets
  resources :lcb_accounts
  resources :lcb_actions
  resources :lcb_cash_coupon_defs
  resources :lcb_cash_coupons
  resources :lcb_feed_backs
  resources :lcb_image_positions
  resources :lcb_financing_target_tags
  resources :lcb_financing_target_positions
  resources :lcb_financing_target_bids
  resources :lcb_financing_targets
  resources :lcb_klines
  resources :lcb_manager_users
  resources :lcb_menus
  resources :lcb_pics
  resources :lcb_registries
  resources :lcb_templates
  resources :lcb_user_package_items
  resources :lcb_withdraw_financing_target_bid_items
  resources :lcb_withdraws
  resources :lcb_user_rewards
  resources :lcb_user_banks
  resources :lcb_users
  resources :yunweis
#  namespace :admin do
#    resources :users
#  end
  match '/reg', to: 'lcb_users#new', via: 'get'
  match '/login', to: 'lcb_users#login', via: 'get'

  match '/sui_cun_bao', to: 'lcb_users#sui_cun_bao',via:"get"
  match '/login1', to: 'lcb_users#login1', via: 'post'
#    namespace :admin do
#          resources :sessions, only: [:new]
#              match '/signin', to: 'lcb_users#new', via: 'get'
#         end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
