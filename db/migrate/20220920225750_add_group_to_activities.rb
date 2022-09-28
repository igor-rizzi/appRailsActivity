class AddGroupToActivities < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :group, foreign_key: true
  end
end
