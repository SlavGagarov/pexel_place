class AddPlants < ActiveRecord::Migration[7.0]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :fact

      t.timestamps
    end
  end
end
