class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :fullname
      t.string :username
      t.string :password_digest
      t.string :password_confirm
      t.string :location
      t.string :phone_number

      t.timestamps
    end
  end
end
