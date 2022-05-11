class Challenge < ApplicationRecord
  validates :title, :stack, :kind, :difficulty, :description, presence: true

  enum stack: {
    python: 0,
    html: 1
  }

  enum kind: {
    challenge: 0,
    homework: 1
  }

  enum difficulty: {
    easy: 0,
    medium: 1,
    hard: 2
  }
end

# == Schema Information
#
# Table name: challenges
#
#  id          :bigint(8)        not null, primary key
#  title       :string           not null
#  stack       :integer          default("python"), not null
#  kind        :integer          default("challenge"), not null
#  difficulty  :integer          default("easy"), not null
#  description :text             not null
#  link        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
