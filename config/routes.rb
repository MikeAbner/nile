Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'home#index'

  post "search",      to: "search#create"
  get  "by_title",    to: "search#by_title"
  get  "by_author",   to: "search#by_author"
  get  "by_subject",  to: "search#by_subject" 

end
