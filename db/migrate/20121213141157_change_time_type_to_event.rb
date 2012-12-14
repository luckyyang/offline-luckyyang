class ChangeTimeTypeToEvent < ActiveRecord::Migration
  def up
    remove_column :events, :time
    add_column :events, :time, :datetime
  end

  def down
  end
end
