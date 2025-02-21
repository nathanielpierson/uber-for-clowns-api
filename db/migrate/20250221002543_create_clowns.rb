class CreateClowns < ActiveRecord::Migration[7.2]
  def change
    create_table :clowns do |t|
      t.string :name
      t.string :specialty
      t.integer :rates

      t.timestamps
    end
  end
end
