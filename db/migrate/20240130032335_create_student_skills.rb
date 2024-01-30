class CreateStudentSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :student_skills do |t|
      t.integer :student_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
