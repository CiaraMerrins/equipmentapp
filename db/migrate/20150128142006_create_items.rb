class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :poster
      t.string :description
      t.integer :equipmenttype_id
      t.string :manufacturer

      t.timestamps
    end
  end
end
