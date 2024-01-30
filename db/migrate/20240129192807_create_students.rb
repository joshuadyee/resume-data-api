class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :bio
      t.string :linkedin_url
      t.string :twitter_handle
      t.string :website_url
      t.string :resume_url
      t.string :github_url
      t.string :photo
      t.string :password_digest

      t.timestamps
    end
  end
end
