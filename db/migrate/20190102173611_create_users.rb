class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.date :age
      t.integer :education_id
      t.decimal :salary
      t.integer :permission_id

      t.timestamps
    end
  end
end
