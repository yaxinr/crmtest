class CreateDealMilestones < ActiveRecord::Migration
  def change
    create_table :deal_milestones do |t|
      t.string :color
      t.integer :sort_order
      t.string :title
      t.text :description
      t.integer :probability
      t.integer :status
      t.references :tenant

      t.timestamps
    end
    add_index :deal_milestones, :tenant_id
  end
end
