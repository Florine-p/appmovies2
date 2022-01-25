class AddToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :user, :first_name, :string
    add_column :user, :last_name, :string
  end
end
