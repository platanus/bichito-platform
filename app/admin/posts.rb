ActiveAdmin.register Post do
  permit_params :title, :image

  form do |f|
    f.semantic_errors

    f.inputs do
      f.input :title
      f.input :image,  { as: :file }
    end

    f.actions
  end
end
