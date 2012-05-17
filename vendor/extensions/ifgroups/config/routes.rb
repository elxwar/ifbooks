Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :ifgroups do
    resources :ifgroups, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :ifgroups, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :ifgroups, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end