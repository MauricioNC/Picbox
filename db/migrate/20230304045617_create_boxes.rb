class CreateBoxes < ActiveRecord::Migration[6.1]
  def change
    create_table :boxes do |t|
      t.string :box_name
      t.string :description
      t.string :identifier

      t.timestamps
    end
  end
end
