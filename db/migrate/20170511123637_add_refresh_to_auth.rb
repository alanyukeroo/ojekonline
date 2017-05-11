class AddRefreshToAuth < ActiveRecord::Migration[5.0]
  def change
    add_column :auths, :refresh_token, :string
  end
end
