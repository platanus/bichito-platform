class Post < ApplicationRecord
  include ImageUploader::Attachment(:image)

  validates :title, presence: true
end

# == Schema Information
#
# Table name: posts
#
#  id         :bigint(8)        not null, primary key
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image_data :jsonb
#
