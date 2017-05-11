class AddUserToAuth < ActiveRecord::Migration[5.0]
  def change
    add_reference :auths, :user, foreign_key: true
  end
end
