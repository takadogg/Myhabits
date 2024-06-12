class CreateHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :habits do |t|
      t.string     :habit,         null: false
      t.integer    :evaluation_id, null: false
      t.integer    :time
      t.text       :memo
      t.references :user,          null: false, foreign_key: true
      t.timestamps
    end
  end
end
