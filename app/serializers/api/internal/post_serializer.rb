class Api::Internal::PostSerializer < ActiveModel::Serializer
  type :post

  attributes(
    :id,
    :title,
    :created_at,
    :updated_at
  )
end
