class Api::Internal::PostSerializer < ActiveModel::Serializer
  type :post

  attributes(
    :id,
    :title,
    :image_url,
    :created_at,
    :updated_at
  )
end
