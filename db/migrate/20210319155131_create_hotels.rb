class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name, null: false
      t.text :description
      t.integer :rating

      t.timestamps
    end
  end
end
