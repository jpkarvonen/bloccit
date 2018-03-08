class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    
    # when running rails db:migrate console logged: 'SQLite3::SQLException: table "users" already exists'
    # i researched the issue and implemented 'drop_table :users'. this seems to have resolved the issue. 
    # id appreciate feedback on this and if this fix may cause issues
    drop_table :users

    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end