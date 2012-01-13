class ChangeContactsGenderToString < ActiveRecord::Migration
  def up
  	remove_column :contacts, :gender
  	add_column :contacts, :gender, :string
  end

  def down
  	remove_column :contacts, :gender
  	add_column :contacts, :gender, :boolean
  end
end
