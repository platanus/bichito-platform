class Api::Internal::ChallengeSerializer < ActiveModel::Serializer
  type :challenge

  attributes(
    :id,
    :title,
    :stack,
    :kind,
    :difficulty,
    :description,
    :link,
    :created_at,
    :updated_at
  )
end
