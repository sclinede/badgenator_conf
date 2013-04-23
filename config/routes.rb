Badgenator::Application.routes.draw do
  match 'contacts' => 'welcome#contacts', :as => :contacts

  resources :badge_sets, :path => :archive, :except => [:show] do
    collection do
      match 'page/:page', :action => :index
    end

    resources :badges do
      collection do
        match 'page/:page', :action => :index
      end
    end
  end

  root :to => 'welcome#index'
end
