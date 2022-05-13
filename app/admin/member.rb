ActiveAdmin.register Member do
  permit_params :name, :description, :role, :image
  index do
    selectable_column
    id_column
    column :name
    column :description
    column :role
    image_column :image
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :role
      f.input :image, as: :file
      f.actions
    end
  end
end
