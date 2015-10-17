class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.string :code
      t.boolean :open

      t.timestamps null: false
    end

    create_table :channels_users, id: false do |t|
        t.belongs_to :channel, index: true
        t.belongs_to :user, index: true
    end
  end
end
