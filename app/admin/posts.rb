ActiveAdmin.register Post do
  permit_params :title, :body, :category_id, :admin_user_id
  menu :label => "Blog Posts"
  index do
    column :title
    column "Author", :admin_user
    column :category
    column :created_at
    actions
  end
end
