class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.references :responsible
      t.references :crm_contact
      t.integer :is_closed
      t.references :tenant
      t.integer :entity_type
      t.references :entity
      t.references :category

      t.timestamps
    end
  end
end
