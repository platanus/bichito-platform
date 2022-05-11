ActiveAdmin.register Challenge do
  permit_params :title, :stack, :kind, :difficulty, :description, :link
end
