class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.references :user, foreign_key: true
      t.string     :training_name 
      t.integer    :weight
      t.integer    :number
      t.integer    :calories_burned 
      t.timestamps
    end
  end
end
