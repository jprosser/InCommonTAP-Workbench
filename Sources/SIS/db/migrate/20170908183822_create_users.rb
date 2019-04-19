class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :givenname
      t.string :surname
      t.string :fullName
      t.string :description
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
