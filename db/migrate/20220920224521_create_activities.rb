class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :description
      t.string :metric
      t.integer :periodicity
      t.integer :activity_type
      t.integer :method

      t.timestamps
    end
  end
end
