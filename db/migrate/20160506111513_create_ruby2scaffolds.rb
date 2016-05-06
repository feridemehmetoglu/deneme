class CreateRuby2scaffolds < ActiveRecord::Migration
  def change
    create_table :ruby2scaffolds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
