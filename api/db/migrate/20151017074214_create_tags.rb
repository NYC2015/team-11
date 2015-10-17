class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.timestamps null: false
    end

    create_table :projects_tags, id: false do |t|
        t.belongs_to :project, index: true
        t.belongs_to :tag, index: true
    end
  end
end
