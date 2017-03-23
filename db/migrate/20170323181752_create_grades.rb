class CreateGrades < ActiveRecord::Migration[5.0]
  def change
    create_table :grades do |t|
      t.string :letter_grade
      t.string :comment
      t.string :course
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
