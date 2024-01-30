class CreateCapstones < ActiveRecord::Migration[7.0]
  def change
    create_table :capstones do |t|
      t.integer :student_id
      t.string :name
      t.string :description
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
