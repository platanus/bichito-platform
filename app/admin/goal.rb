ActiveAdmin.register Goal do
  permit_params :title, :order

  form do |f|
    f.semantic_errors

    f.inputs do
      f.input :title
      f.input :order
    end

    f.actions
  end
end
