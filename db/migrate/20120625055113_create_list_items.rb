class CreateListItems < ActiveRecord::Migration
  def change
    create_table :list_items do |t|
      t.string :title
      t.integer :sort_order
      t.string :color
      t.string :additional_params
      t.references :tenant
      t.integer :list_type
      t.string :description

      t.timestamps
    end
  end
end
