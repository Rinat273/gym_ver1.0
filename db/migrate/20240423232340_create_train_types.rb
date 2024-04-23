class CreateTrainTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :train_types do |t|
      t.text :title

      t.timestamps
    end
  end
end
