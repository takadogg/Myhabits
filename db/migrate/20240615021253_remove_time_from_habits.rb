class RemoveTimeFromHabits < ActiveRecord::Migration[7.0]
  def change
    remove_column :habits, :time, :integer
  end
end
