class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :username
      t.string :password_hash
      t.string :password_salt
      

      t.timestamps
    end
  end
end
