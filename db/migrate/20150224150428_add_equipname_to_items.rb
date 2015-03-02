class AddEquipnameToItems < ActiveRecord::Migration
  def change
    add_column :items, :equipname, :String

  end
end
