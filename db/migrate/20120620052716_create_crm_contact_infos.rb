class CreateCrmContactInfos < ActiveRecord::Migration
  def change
    create_table :crm_contact_infos do |t|
      t.text :data
      t.references :category
      t.references :tenant
      t.integer :is_primary
      t.references :crm_contact
      t.references :type

      t.timestamps
    end
  end
end
