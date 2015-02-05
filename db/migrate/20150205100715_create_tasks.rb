class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.references :client
      t.references :service
      t.datetime :time_from
      t.datetime :time_to

      t.timestamps
    end
    add_index :tasks, :client_id
    add_index :tasks, :service_id
  end
end
