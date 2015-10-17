class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :stage
      t.integer :channel_id

      t.timestamps null: false
    end
  end
end
