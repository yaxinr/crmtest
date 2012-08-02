class CreateEntityTags < ActiveRecord::Migration
  def change
    create_table :entity_tags do |t|
      t.references :entity
      t.integer :entity_type
      t.references :tag

      t.timestamps
    end
  end
end
