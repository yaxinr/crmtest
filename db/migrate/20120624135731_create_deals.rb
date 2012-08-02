class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.text :description
      t.integer :responsible
      t.references :crm_contact
      t.string :bid_currency
      t.decimal :bid_value, :precision => 50, :scale => 9
      t.integer :bid_type
      t.references :deal_milestone
      t.references :tenant
      t.datetime :expected_close_date
      t.integer :per_period_value
      t.integer :deal_milestone_probability
      t.datetime :actual_close_date

      t.timestamps
    end
  end
end
