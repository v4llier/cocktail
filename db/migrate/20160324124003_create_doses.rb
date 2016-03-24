class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.string :description
      t.reference :ingredient
      t.reference :cocktail

      t.timestamps null: false
    end
  end
end
