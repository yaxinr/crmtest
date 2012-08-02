class CreateRelationshipEvents < ActiveRecord::Migration
  def change
    create_table :relationship_events do |t|
      t.references :crm_contact
      t.text :content
      t.references :tenant
      t.integer :entity_type
      t.references :entity
      t.references :category
      t.integer :have_files

      t.timestamps
    end
  end
end
