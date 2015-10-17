class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.string :code
      t.boolean :open

      t.timestamps null: false
    end
  end
end
