class CreateMailusers < ActiveRecord::Migration
  def change
    create_table :mailusers do |t|
      t.string :username
      t.string :email
      t.string :password
      t.integer :empid

      t.timestamps
    end
  end
end
