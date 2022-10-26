class CreateCells < ActiveRecord::Migration[7.0]
  def change
    create_table :cells do |t|
      t.x :integer
      t.y :integer
      t.color :string

      t.timestamps
    end
  end
end
