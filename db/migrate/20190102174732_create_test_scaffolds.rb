class CreateTestScaffolds < ActiveRecord::Migration[5.2]
  def change
    create_table :test_scaffolds do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :test_scaffolds, :email, unique: true
  end
end
