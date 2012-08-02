class CreateEntityContacts < ActiveRecord::Migration
  def change
    create_table :entity_contacts do |t|
      t.references :entity
      t.integer :entity_type
      t.references :crm_contact

      t.timestamps
    end
  end
end
