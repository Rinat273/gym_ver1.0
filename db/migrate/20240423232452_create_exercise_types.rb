class CreateExerciseTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :exercise_types do |t|
      t.text :title

      t.timestamps
    end
  end
end
