class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.integer :student_id
      t.string :start_date
      t.string :end_date
      t.string :degree
      t.string :university
      t.string :details

      t.timestamps
    end
  end
end
