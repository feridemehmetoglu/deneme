class CreateYandalagits < ActiveRecord::Migration
  def change
    create_table :yandalagits do |t|
      t.string :index

      t.timestamps null: false
    end
  end
end
