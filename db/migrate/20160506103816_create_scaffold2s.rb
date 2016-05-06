class CreateScaffold2s < ActiveRecord::Migration
  def change
    create_table :scaffold2s do |t|
      t.string :Flower
      t.string :name
      t.string :type

      t.timestamps null: false
    end
  end
end
