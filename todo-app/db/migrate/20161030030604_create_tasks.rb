class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :priority
      t.date :due_date
      t.boolean :is_completed
      t.references :task_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
