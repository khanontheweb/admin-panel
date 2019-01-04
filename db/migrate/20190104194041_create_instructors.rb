class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.integer :instructor_id
      t.belongs_to :cohort, index: true

      t.timestamps
    end
  end
end
