class CreateFieldDescriptions < ActiveRecord::Migration
  def change
    create_table :field_descriptions do |t|
      t.references :tenant
      t.string :label
      t.integer :type
      t.integer :sort_order
      t.string :mask
      t.integer :entity_type

      t.timestamps
    end
  end
end
