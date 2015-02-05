class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :name
      t.integer :service_men

      t.timestamps
    end
  end
end
