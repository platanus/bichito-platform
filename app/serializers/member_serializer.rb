class MemberSerializer < ActiveModel::Serializer
  type :member

  attributes(
    :id,
    :name,
    :role,
    :description,
    :image_url
  )
end
