class CreateTrainPlans < ActiveRecord::Migration[7.1]
  def change
    create_table :train_plans do |t|
      t.references :train_type, null: false, foreign_key: true
      t.references :exercise_type, null: false, foreign_key: true
      t.integer :sequence_number

      t.timestamps
    end
  end
end
