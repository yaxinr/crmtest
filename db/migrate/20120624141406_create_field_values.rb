class CreateFieldValues < ActiveRecord::Migration
  def change
    create_table :field_values do |t|
      t.string :value
      t.references :entity
      t.references :tenant
      t.references :field
      t.integer :entity_type

      t.timestamps
    end
  end
end
