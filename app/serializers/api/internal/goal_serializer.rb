class Api::Internal::GoalSerializer < ActiveModel::Serializer
  type :goal

  attributes(
    :id,
    :title,
    :order
  )
end
