class Member < ApplicationRecord
  include ImageUploader::Attachment(:image)
  validates :role, :description, :name, presence: true
end

# == Schema Information
#
# Table name: members
#
#  id          :bigint(8)        not null, primary key
#  name        :string           not null
#  description :text             not null
#  image_data  :jsonb
#  role        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
