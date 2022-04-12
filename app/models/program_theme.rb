class ProgramTheme < ApplicationRecord
end

# == Schema Information
#
# Table name: program_themes
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  duration    :string
#  order       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
