class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :title
      t.string :location
      t.string :identifier

      t.timestamps
    end
  end
end
