class ChangeMembersColumnsNotNull < ActiveRecord::Migration[6.1]
  def change
    safety_assured do
      change_column_null :members, :name, false
      change_column_null :members, :description, false
      change_column_null :members, :role, false
    end
  end
end
