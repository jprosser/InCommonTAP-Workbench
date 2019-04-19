class AddlfnameToUsers < ActiveRecord::Migration[5.0]
  def change
      add_column :users, :lfname, :string
  end
end
