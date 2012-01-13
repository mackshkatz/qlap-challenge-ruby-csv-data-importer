class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.boolean :gender
      t.string :color
      t.integer :lucky_number

      t.timestamps
    end
  end
end
