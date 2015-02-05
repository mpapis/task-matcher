class CreateTaskDetails < ActiveRecord::Migration
  def change
    create_table :task_details do |t|
      t.string :name
      t.time :time_required
      t.integer :people_amount
      t.references :task
      t.references :service

      t.timestamps
    end
    add_index :task_details, :task_id
    add_index :task_details, :service_id

    change_table :tasks do |t|
      t.remove :service
    end
  end
end
