class CreateCoursesUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :courses_users, :id => false do |t|
        t.integer :course_id
        t.integer :user_id
    end
  end
end
