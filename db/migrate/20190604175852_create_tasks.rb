class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :project, foreign_key: true
      t.string :name
      t.boolean :completed
      t.integer :number

      t.timestamps
    end
  end
end
