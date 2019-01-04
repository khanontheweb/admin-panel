class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :student_id
      t.belongs_to :cohort, index: true

      t.timestamps
    end
  end
end
