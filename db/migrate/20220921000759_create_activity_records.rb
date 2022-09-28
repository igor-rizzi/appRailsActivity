class CreateActivityRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_records do |t|
      t.references :activity, foreign_key: true
      t.datetime :record_date
      t.decimal :quantity

      t.timestamps
    end
  end
end
