class AddUserTypeInUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_type, :integer, default: 1
  end
end
