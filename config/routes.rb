Rails.application.routes.draw do
  devise_for :users
  devise_for :views
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Home
  get "/", :controller => "recommends", :action => "index"

  # Get details from Apple
  get "/new_itunes_app_form", :controller => "apple", :action => "get_itunes_app_form"
  post "/new_itunes_app", :controller => "apple", :action => "get_itunes_app"

  # Routes for the Event resource:
  # CREATE
  get "/events/new", :controller => "events", :action => "new"
  post "/create_event", :controller => "events", :action => "create"

  # READ
  get "/events", :controller => "events", :action => "index"
  get "/events/:id", :controller => "events", :action => "show"

  # UPDATE
  get "/events/:id/edit", :controller => "events", :action => "edit"
  post "/update_event/:id", :controller => "events", :action => "update"

  # DELETE
  get "/delete_event/:id", :controller => "events", :action => "destroy"
  #------------------------------

  # Routes for the Task_assignment resource:
  # CREATE
  get "/task_assignments/new", :controller => "task_assignments", :action => "new"
  post "/create_task_assignment", :controller => "task_assignments", :action => "create"

  # READ
  get "/task_assignments", :controller => "task_assignments", :action => "index"
  get "/task_assignments/:id", :controller => "task_assignments", :action => "show"

  # UPDATE
  get "/task_assignments/:id/edit", :controller => "task_assignments", :action => "edit"
  post "/update_task_assignment/:id", :controller => "task_assignments", :action => "update"

  # DELETE
  get "/delete_task_assignment/:id", :controller => "task_assignments", :action => "destroy"
  #------------------------------

  # Routes for the Task resource:
  # CREATE
  get "/tasks/new", :controller => "tasks", :action => "new"
  post "/create_task", :controller => "tasks", :action => "create"

  # READ
  get "/tasks", :controller => "tasks", :action => "index"
  get "/tasks/:id", :controller => "tasks", :action => "show"

  # UPDATE
  get "/tasks/:id/edit", :controller => "tasks", :action => "edit"
  post "/update_task/:id", :controller => "tasks", :action => "update"

  # DELETE
  get "/delete_task/:id", :controller => "tasks", :action => "destroy"
  #------------------------------

  # Routes for the Project_group resource:
  # CREATE
  get "/project_groups/new", :controller => "project_groups", :action => "new"
  post "/create_project_group", :controller => "project_groups", :action => "create"

  # READ
  get "/project_groups", :controller => "project_groups", :action => "index"
  get "/project_groups/:id", :controller => "project_groups", :action => "show"

  # UPDATE
  get "/project_groups/:id/edit", :controller => "project_groups", :action => "edit"
  post "/update_project_group/:id", :controller => "project_groups", :action => "update"

  # DELETE
  get "/delete_project_group/:id", :controller => "project_groups", :action => "destroy"
  #------------------------------

  # Routes for the Project resource:
  # CREATE
  get "/projects/new", :controller => "projects", :action => "new"
  post "/create_project", :controller => "projects", :action => "create"

  # READ
  get "/projects", :controller => "projects", :action => "index"
  get "/projects/:id", :controller => "projects", :action => "show"

  # UPDATE
  get "/projects/:id/edit", :controller => "projects", :action => "edit"
  post "/update_project/:id", :controller => "projects", :action => "update"

  # DELETE
  get "/delete_project/:id", :controller => "projects", :action => "destroy"
  #------------------------------

  # Routes for the Group_user resource:
  # CREATE
  get "/group_users/new", :controller => "group_users", :action => "new"
  post "/create_group_user", :controller => "group_users", :action => "create"

  # READ
  get "/group_users", :controller => "group_users", :action => "index"
  get "/group_users/:id", :controller => "group_users", :action => "show"

  # UPDATE
  get "/group_users/:id/edit", :controller => "group_users", :action => "edit"
  post "/update_group_user/:id", :controller => "group_users", :action => "update"

  # DELETE
  get "/delete_group_user/:id", :controller => "group_users", :action => "destroy"
  #------------------------------

  # Routes for the Group resource:
  # CREATE
  get "/groups/new", :controller => "groups", :action => "new"
  post "/create_group", :controller => "groups", :action => "create"

  # READ
  get "/groups", :controller => "groups", :action => "index"
  get "/groups/:id", :controller => "groups", :action => "show"

  # UPDATE
  get "/groups/:id/edit", :controller => "groups", :action => "edit"
  post "/update_group/:id", :controller => "groups", :action => "update"

  # DELETE
  get "/delete_group/:id", :controller => "groups", :action => "destroy"
  #------------------------------

  # Routes for the Recommend resource:
  # CREATE
  post "/recommends/new", :controller => "recommends", :action => "new"
  post "/create_recommend", :controller => "recommends", :action => "create"

  # READ
  get "/recommends", :controller => "recommends", :action => "index"
  get "/recommends/:id", :controller => "recommends", :action => "show"

  # UPDATE
  get "/recommends/:id/edit", :controller => "recommends", :action => "edit"
  post "/update_recommend/:id", :controller => "recommends", :action => "update"

  # DELETE
  get "/delete_recommend/:id", :controller => "recommends", :action => "destroy"
  #------------------------------

  # Routes for the My_app resource:
  # CREATE
  get "/my_apps/new", :controller => "my_apps", :action => "new"
  post "/create_my_app", :controller => "my_apps", :action => "create"

  # READ
  get "/my_apps", :controller => "my_apps", :action => "index"
  get "/my_apps/:id", :controller => "my_apps", :action => "show"

  # UPDATE
  get "/my_apps/:id/edit", :controller => "my_apps", :action => "edit"
  post "/update_my_app/:id", :controller => "my_apps", :action => "update"

  # DELETE
  get "/delete_my_app/:id", :controller => "my_apps", :action => "destroy"
  #------------------------------

  # Routes for the Activity_action resource:
  # CREATE
  get "/activity_actions/new", :controller => "activity_actions", :action => "new"
  post "/create_activity_action", :controller => "activity_actions", :action => "create"

  # READ
  get "/activity_actions", :controller => "activity_actions", :action => "index"
  get "/activity_actions/:id", :controller => "activity_actions", :action => "show"

  # UPDATE
  get "/activity_actions/:id/edit", :controller => "activity_actions", :action => "edit"
  post "/update_activity_action/:id", :controller => "activity_actions", :action => "update"

  # DELETE
  get "/delete_activity_action/:id", :controller => "activity_actions", :action => "destroy"
  #------------------------------

  # Routes for the Action resource:
  # CREATE
  get "/actions/new", :controller => "actions", :action => "new"
  post "/create_action", :controller => "actions", :action => "create"

  # READ
  get "/actions", :controller => "actions", :action => "index"
  get "/actions/:id", :controller => "actions", :action => "show"

  # UPDATE
  get "/actions/:id/edit", :controller => "actions", :action => "edit"
  post "/update_action/:id", :controller => "actions", :action => "update"

  # DELETE
  get "/delete_action/:id", :controller => "actions", :action => "destroy"
  #------------------------------

  # Routes for the Activity_category resource:
  # CREATE
  get "/activity_categories/new", :controller => "activity_categories", :action => "new"
  post "/create_activity_category", :controller => "activity_categories", :action => "create"

  # READ
  get "/activity_categories", :controller => "activity_categories", :action => "index"
  get "/activity_categories/:id", :controller => "activity_categories", :action => "show"

  # UPDATE
  get "/activity_categories/:id/edit", :controller => "activity_categories", :action => "edit"
  post "/update_activity_category/:id", :controller => "activity_categories", :action => "update"

  # DELETE
  get "/delete_activity_category/:id", :controller => "activity_categories", :action => "destroy"
  #------------------------------

  # Routes for the Activity resource:
  # CREATE
  get "/activities/new", :controller => "activities", :action => "new"
  post "/create_activity", :controller => "activities", :action => "create"

  # READ
  get "/activities", :controller => "activities", :action => "index"
  get "/activities/:id", :controller => "activities", :action => "show"

  # UPDATE
  get "/activities/:id/edit", :controller => "activities", :action => "edit"
  post "/update_activity/:id", :controller => "activities", :action => "update"

  # DELETE
  get "/delete_activity/:id", :controller => "activities", :action => "destroy"
  #------------------------------

  # Routes for the Category resource:
  # CREATE
  get "/categories/new", :controller => "categories", :action => "new"
  post "/create_category", :controller => "categories", :action => "create"

  # READ
  get "/categories", :controller => "categories", :action => "index"
  get "/categories/:id", :controller => "categories", :action => "show"

  # UPDATE
  get "/categories/:id/edit", :controller => "categories", :action => "edit"
  post "/update_category/:id", :controller => "categories", :action => "update"

  # DELETE
  get "/delete_category/:id", :controller => "categories", :action => "destroy"
  #------------------------------

  # Routes for the App resource:
  # CREATE
  get "/apps/new", :controller => "apps", :action => "new"
  post "/create_app", :controller => "apps", :action => "create"

  # READ
  get "/apps", :controller => "apps", :action => "index"
  get "/apps/:id", :controller => "apps", :action => "show"

  # UPDATE
  get "/apps/:id/edit", :controller => "apps", :action => "edit"
  post "/update_app/:id", :controller => "apps", :action => "update"

  # DELETE
  get "/delete_app/:id", :controller => "apps", :action => "destroy"
  #------------------------------

  # Routes for the My_device resource:
  # CREATE
  get "/my_devices/new", :controller => "my_devices", :action => "new"
  post "/create_my_device", :controller => "my_devices", :action => "create"

  # READ
  get "/my_devices", :controller => "my_devices", :action => "index"
  get "/my_devices/:id", :controller => "my_devices", :action => "show"

  # UPDATE
  get "/my_devices/:id/edit", :controller => "my_devices", :action => "edit"
  post "/update_my_device/:id", :controller => "my_devices", :action => "update"

  # DELETE
  get "/delete_my_device/:id", :controller => "my_devices", :action => "destroy"
  #------------------------------

  # Routes for the Manufacturer resource:
  # CREATE
  get "/manufacturers/new", :controller => "manufacturers", :action => "new"
  post "/create_manufacturer", :controller => "manufacturers", :action => "create"

  # READ
  get "/manufacturers", :controller => "manufacturers", :action => "index"
  get "/manufacturers/:id", :controller => "manufacturers", :action => "show"

  # UPDATE
  get "/manufacturers/:id/edit", :controller => "manufacturers", :action => "edit"
  post "/update_manufacturer/:id", :controller => "manufacturers", :action => "update"

  # DELETE
  get "/delete_manufacturer/:id", :controller => "manufacturers", :action => "destroy"
  #------------------------------

  # Routes for the Opsystem resource:
  # CREATE
  get "/opsystems/new", :controller => "opsystems", :action => "new"
  post "/create_opsystem", :controller => "opsystems", :action => "create"

  # READ
  get "/opsystems", :controller => "opsystems", :action => "index"
  get "/opsystems/:id", :controller => "opsystems", :action => "show"

  # UPDATE
  get "/opsystems/:id/edit", :controller => "opsystems", :action => "edit"
  post "/update_opsystem/:id", :controller => "opsystems", :action => "update"

  # DELETE
  get "/delete_opsystem/:id", :controller => "opsystems", :action => "destroy"
  #------------------------------

  # Routes for the Device resource:
  # CREATE
  get "/devices/new", :controller => "devices", :action => "new"
  post "/create_device", :controller => "devices", :action => "create"

  # READ
  get "/devices", :controller => "devices", :action => "index"
  get "/devices/:id", :controller => "devices", :action => "show"

  # UPDATE
  get "/devices/:id/edit", :controller => "devices", :action => "edit"
  post "/update_device/:id", :controller => "devices", :action => "update"

  # DELETE
  get "/delete_device/:id", :controller => "devices", :action => "destroy"
  #------------------------------

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
