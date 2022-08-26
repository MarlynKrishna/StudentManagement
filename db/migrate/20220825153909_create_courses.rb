class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.decimal :fee
      t.string :starting_date
      t.string :ending_date

      t.timestamps
    end
  end
end
