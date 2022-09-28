class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :description
      t.string :icon
      t.string :color

      t.timestamps
    end
  end
end
