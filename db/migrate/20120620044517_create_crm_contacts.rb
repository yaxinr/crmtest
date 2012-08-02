class CreateCrmContacts < ActiveRecord::Migration
  def change
    create_table :crm_contacts do |t|
      t.references :tenant
      t.integer :is_company
      t.text :notes
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :company_name
      t.string :industry
      t.references :status
      t.references :company

      t.timestamps
    end
  end
end
