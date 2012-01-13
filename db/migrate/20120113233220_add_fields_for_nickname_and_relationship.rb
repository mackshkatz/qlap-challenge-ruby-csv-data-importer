class AddFieldsForNicknameAndRelationship < ActiveRecord::Migration
  def up
  	add_column :contacts, :nick_name, :string
  	add_column :contacts, :relationship, :string
  end

  def down
  	remove_column :contacts, :nick_name
  	remove_column :contacts, :relationship
  end
end
