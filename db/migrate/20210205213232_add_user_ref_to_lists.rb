class AddUserRefToLists < ActiveRecord::Migration[6.0]
  def change
    add_reference :lists, :user, null: true, foreign_key: true
  end
end
