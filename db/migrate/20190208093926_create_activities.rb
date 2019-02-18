class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.references :user, foreign_key: true
      t.references :exercise, foreign_key: true
      t.date :activitydate
      t.integer :duration

      t.timestamps
    end
  end
end
