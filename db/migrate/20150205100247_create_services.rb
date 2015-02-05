class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.references :machine

      t.timestamps
    end
    add_index :services, :machine_id
  end
end
